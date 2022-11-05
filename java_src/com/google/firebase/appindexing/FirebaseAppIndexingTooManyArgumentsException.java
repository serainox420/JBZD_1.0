package com.google.firebase.appindexing;
/* loaded from: classes2.dex */
public class FirebaseAppIndexingTooManyArgumentsException extends FirebaseAppIndexingException {
    public FirebaseAppIndexingTooManyArgumentsException() {
        super("Too many Indexables provided. Try splitting them in batches.");
    }

    public FirebaseAppIndexingTooManyArgumentsException(String str) {
        super(str);
    }

    public FirebaseAppIndexingTooManyArgumentsException(String str, Throwable th) {
        super(str, th);
    }
}
