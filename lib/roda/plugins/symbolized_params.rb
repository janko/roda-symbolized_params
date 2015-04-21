class Roda
  module RodaPlugins
    module SymbolizedParams
      module InstanceMethods
        def params
          @_params ||= symbolized_params(request.params)
        end

        private

        def symbolized_params(params)
          case params
          when Hash
            hash = {}
            params.each { |k, v| hash[k.to_sym] = symbolized_params(v) }
            hash
          when Array
            params.map { |x| symbolized_params(x) }
          else
            params
          end
        end
      end
    end

    register_plugin(:symbolized_params, SymbolizedParams)
  end
end
