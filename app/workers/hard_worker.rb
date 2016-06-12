class HardWorker
    include Sidekiq::Worker

    def perform(name, count) 
        sleep 2
        a = name
        count.times do
            puts  "Hello #{a}!!!"
        end
    end
end