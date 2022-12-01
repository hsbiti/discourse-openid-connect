class FinalDestination::Resolver
    module OpenIdResolverLookup
        def self.lookup(addr, timeout: nil)
            Rails.logger.debug("==== Fix timeout ====")
            super(addr,20);
        end
    end
    prepend OpenIdResolverLookup
end
