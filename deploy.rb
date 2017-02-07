require 'chef/provisioning/docker_driver'
with_driver 'docker'

machine 'mycontainer' do
  action :converge

  recipe 'apt::default'
  recipe 'buildContainerTask::default'

  machine_options(
      docker_options: {
        base_image: {
          name: 'ubuntu',
          repository: 'ubuntu',
          tag: 'latest'
        }
      },
      convergence_options: {
          chef_config: "log_level :debug\\n"
      },
      ports: ['80:80']
  )
end
