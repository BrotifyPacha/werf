module Dapp
  module Dimg
    module Dapp
      module Command
        module Stages
          module FlushLocal
            def stages_flush_local
              lock("#{name}.images") do
                log_step_with_indent('flush stages') { remove_project_images(dapp_project_dimgstages) }
              end
            end
          end
        end
      end
    end
  end # Dimg
end # Dapp
