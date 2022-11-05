.class public final Lio/realm/log/RealmLog;
.super Ljava/lang/Object;
.source "RealmLog.java"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "REALM_JAVA"

    sput-object v0, Lio/realm/log/RealmLog;->a:Ljava/lang/String;

    return-void
.end method

.method private static varargs a(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    if-eqz p3, :cond_0

    array-length v1, p3

    if-lez v1, :cond_0

    .line 273
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 275
    :cond_0
    if-eqz p1, :cond_1

    .line 276
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    :cond_1
    if-eqz p2, :cond_3

    .line 279
    if-eqz p1, :cond_2

    .line 280
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    :cond_2
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    :cond_3
    sget-object v1, Lio/realm/log/RealmLog;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, p1, v0}, Lio/realm/log/RealmLog;->nativeLog(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 285
    return-void
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lio/realm/log/RealmLog;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    return-void
.end method

.method public static varargs a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x3

    invoke-static {v0, p0, p1, p2}, Lio/realm/log/RealmLog;->a(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    return-void
.end method

.method public static varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lio/realm/log/RealmLog;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    return-void
.end method

.method public static varargs b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x5

    invoke-static {v0, p0, p1, p2}, Lio/realm/log/RealmLog;->a(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    return-void
.end method

.method public static varargs c(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lio/realm/log/RealmLog;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    return-void
.end method

.method public static varargs c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x7

    invoke-static {v0, p0, p1, p2}, Lio/realm/log/RealmLog;->a(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    return-void
.end method

.method private static native nativeAddLogger(Lio/realm/log/RealmLogger;)V
.end method

.method private static native nativeClearLoggers()V
.end method

.method private static native nativeGetLogLevel()I
.end method

.method private static native nativeLog(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
.end method

.method private static native nativeRegisterDefaultLogger()V
.end method

.method private static native nativeRemoveLogger(Lio/realm/log/RealmLogger;)V
.end method

.method private static native nativeSetLogLevel(I)V
.end method
