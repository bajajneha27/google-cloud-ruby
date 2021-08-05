def object_methods object = nil
  object ||= @object
  method_list = object.children.select { |child| child.type == :method }
  method_list.reject! do |method| 
    method.visibility == :private || method.tags.any? { |tag| tag.tag_name == "private" }
  end
  method_list
end

def method_id
  @method.path
end

def method_signature
  sign = @method.path[@method.path.size - @method.name.to_s.size - 1]
  text = ""
  yield_params = @method.tags.select { |tag| tag.tag_name == "yieldparam" }
  overloads = @method.tags.select { |tag| tag.tag_name == "overload" }
  returns = @method.tags.select { |tag| tag.tag_name == "return" }
  return_types = returns.map { |entry| entry.types }.flatten.uniq
  return_text = ""

  unless return_types.empty?
    return_text += " => "
    return_text += return_types.join ", "
  end

  block_text = ""

  unless yield_params.empty?
    block_text += " { |#{yield_params.map(&:name).join ", "}"
    block_text += "| ... }"
  end
  
  if overloads.empty?
    text += "def "
    text += "self." if sign == "."
    text += @method.name.to_s
    unless @method.parameters.empty?
      text += "("
      params = @method.parameters.map do |param|
        entry = param[0]
        if param[1]
          if entry.end_with? ":"
            entry += " #{param[1]}"
          else
            entry += " = #{param[1]}"
          end
        end
        entry
      end
      text += params.join ", "
      text += ")"
    end
    text += block_text
    text += return_text
  else
    overload_sig = overloads.map do |overload|
      head = "def "
      head += "self." if sign == "."
      "#{head}#{overload.signature}#{return_text}"
    end
    text += overload_sig.join "\\n"
  end
  text
end

def param_text
  text = []
  overloads = @method.tags.select { |tag| tag.tag_name == "overload" }
  if overloads.empty?
    return "    parameters: []" if params.empty?
    text << "    parameters:"
    params.each do |param|
      text << "    - id: #{param.name}"
      text << "      type:"
      param.types.each do |type|
        text << "        - \"#{object_url type}\""
      end
      text << "      description: \"#{pre_format param.text}\"" unless param.text.empty?
      default_value = @method.parameters.select { |n| n[0] == param.name }.last
      default_value ||= @method.parameters.select { |n| n[0] == "#{param.name}:" }.last
      if default_value && default_value.last
        text << "      defaultValue: \"#{default_value.last}\""
      end
    end
  else
    text << "    overloads:"
    overloads.each do |overload|
      text << "    - content: \"#{method_signature.split("\\n").select { |sig| sig.include? overload.signature }.first}\""
      text << "      description: \"#{pre_format overload.docstring}\"" unless overload.docstring.empty?
      text << "      example: #{example_text overload, "    "}"
      text << "      parameters:"
      overload.tags.select { |tag| tag.tag_name == "param" }.each do |param|
        text << "      - id: \"#{param.name}\""
        text << "        description: \"#{pre_format param.text}\""
        text << "        type:"
        param.types.each do |type|
          text << "        - \"#{object_url type}\""
        end
        default_value = overload.parameters.select { |n| n[0] == param.name }.last
        default_value ||= overload.parameters.select { |n| n[0] == "#{param.name}:" }.last
        if default_value && default_value.last
          text << "        defaultValue: \"#{default_value.last}\""
        end
      end
    end
  end

  text.join("\n")
end

def params
  @method.tags.select { |tag| tag.tag_name == "param" }
end

def example_text item, indent = 0
  text = [""]
  examples = item.tags.select { |tag| tag.tag_name == "example" }
  return "[]" if examples.empty?

  examples.each do |example|
    text << "- \"#{codeblock escapes(example.text)}\""
  end
  text.map { |line| "#{indent}#{line}" }.join "\n"
end

def yield_text
  text = []
  @method.tags.select { |tag| tag.tag_name == "yield" }.each do |tag|
    text << "  type:" unless tag.types.empty?
    tag.types.each do |yield_type|
      text << "  - \"#{yield_type}\""
    end
    text << "  description: \"#{pre_format tag.text}\"" unless tag.text.empty?
  end
  return "    yield: []" if text.empty?

  text.unshift "yield:"
  text.map { |line| line = "    #{line}" }.join("\n")
end

def yield_param_text
  text = []
  @method.tags.select { |tag| tag.tag_name == "yieldparam" }.each do |tag|
    text << "- id: #{tag.name}"
    text << "  type:"
    tag.types.each do |type|
      text << "  - \"#{object_url type}\""
    end
    text << "  description: \"#{pre_format tag.text}\"" unless tag.text.empty?
  end
  return "    yieldparam: []" if text.empty?

  text.unshift "yieldparam:"
  text.map { |line| line = "    #{line}" }.join("\n")
end

def object_url str
  return str

  url = str
  url = url[2...url.size] if url.start_with? "::"
  if object_list.map(&:path).include? url
    url = "./#{url.gsub("::", "-")}"
    "[#{str}](#{url})"
    "<a href=\\\"#{url}\\\">#{str}</a>"
  else
    str
  end
end

def return_text
  text = []
  @method.tags.select { |tag| tag.tag_name == "return" }.each do |tag|
    text << "  type:"
    tag.types.each do |type|
      text << "  - \"#{object_url type}\""
    end
    text << "  description: \"#{pre_format tag.text}\"" unless tag.text.empty?
  end
  return "    return: []" if text.empty?

  text.unshift "return:"
  text.map { |line| line = "    #{line}" }.join("\n")
end

def raise_text
  text = []
  @method.tags.select { |tag| tag.tag_name == "raise" }.each do |tag|
    text << "  type:" unless tag.types.empty?
    tag.types.each do |raise_type|
      text << "  - \"#{raise_type}\""
    end
    text << "description: \"#{pre_format tag.text}\"" unless tag.text.empty?
  end
  return "    raise: []" if text.empty?
  
  text.unshift "raise:"
  text.map { |line| line = "    #{line}" }.join("\n")
end
