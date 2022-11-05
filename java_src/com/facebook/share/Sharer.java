package com.facebook.share;
/* loaded from: classes.dex */
public interface Sharer {
    boolean getShouldFailOnDataError();

    void setShouldFailOnDataError(boolean z);

    /* loaded from: classes.dex */
    public static class Result {
        final String postId;

        public Result(String str) {
            this.postId = str;
        }

        public String getPostId() {
            return this.postId;
        }
    }
}
