# ----------------------------------------------------------------------------
# Frozen-string-literal: true
# Copyright: 2012 - 2016 - MIT License
# Encoding: utf-8
# ----------------------------------------------------------------------------

module Jekyll
  module Assets
    class Cached < Sprockets::CachedEnvironment
      attr_reader :jekyll
      attr_reader :parent

      # ----------------------------------------------------------------------

      def initialize(env)
        @parent = env
        @jekyll = env.jekyll
        @resolve_cache = {}
        super env
      end

      def resolve(*args)
        @resolve_cache[args] ||= super
      end
    end
  end
end
