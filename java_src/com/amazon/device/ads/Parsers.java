package com.amazon.device.ads;
/* loaded from: classes.dex */
class Parsers {
    Parsers() {
    }

    /* loaded from: classes.dex */
    public static class IntegerParser {
        private int defaultValue;
        private final MobileAdsLogger logger;
        private String parseErrorLogMessage;
        private String parseErrorLogTag;

        public IntegerParser() {
            this(new MobileAdsLoggerFactory());
        }

        IntegerParser(MobileAdsLoggerFactory mobileAdsLoggerFactory) {
            this.logger = mobileAdsLoggerFactory.createMobileAdsLogger("");
        }

        public IntegerParser setDefaultValue(int i) {
            this.defaultValue = i;
            return this;
        }

        public IntegerParser setParseErrorLogMessage(String str) {
            this.parseErrorLogMessage = str;
            return this;
        }

        public IntegerParser setParseErrorLogTag(String str) {
            this.parseErrorLogTag = str;
            this.logger.mo33withLogTag(this.parseErrorLogTag);
            return this;
        }

        public int parse(String str) {
            int i = this.defaultValue;
            if (!StringUtils.isNullOrWhiteSpace(str)) {
                try {
                    return Integer.parseInt(str);
                } catch (NumberFormatException e) {
                    if (this.parseErrorLogTag != null && this.parseErrorLogMessage != null) {
                        this.logger.w(this.parseErrorLogMessage);
                        return i;
                    }
                    return i;
                }
            }
            return i;
        }
    }
}
