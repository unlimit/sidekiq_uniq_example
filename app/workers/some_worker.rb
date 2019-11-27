class SomeWorker
  include Sidekiq::Worker
  
  sidekiq_options lock: :until_executed, unique_args: ->(args) {[args.first]}

  def perform(id)
    puts id
    sleep 10
  end

end
