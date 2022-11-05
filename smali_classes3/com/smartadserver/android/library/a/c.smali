.class public Lcom/smartadserver/android/library/a/c;
.super Ljava/lang/Object;
.source "SASHttpRequestManager.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/Object;

.field private static c:Lcom/smartadserver/android/library/a/c;


# instance fields
.field private d:Lorg/apache/http/client/HttpClient;

.field private e:Landroid/content/Context;

.field private f:Landroid/content/BroadcastReceiver;

.field private g:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/http/client/methods/HttpGet;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lorg/apache/http/client/methods/HttpGet;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private j:I

.field private k:Ljava/util/Timer;

.field private l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/smartadserver/android/library/a/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smartadserver/android/library/a/c;->a:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/smartadserver/android/library/a/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x5

    iput v0, p0, Lcom/smartadserver/android/library/a/c;->j:I

    .line 112
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/smartadserver/android/library/a/c;->g:Ljava/util/Vector;

    .line 113
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/smartadserver/android/library/a/c;->h:Ljava/util/Vector;

    .line 115
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/smartadserver/android/library/a/c;->i:Ljava/util/Hashtable;

    .line 116
    invoke-static {p1}, Lcom/smartadserver/android/library/g/c;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartadserver/android/library/a/c;->l:Ljava/lang/String;

    .line 117
    invoke-virtual {p0, p1}, Lcom/smartadserver/android/library/a/c;->b(Landroid/content/Context;)V

    .line 121
    sget-object v1, Lcom/smartadserver/android/library/a/c;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/smartadserver/android/library/a/c;->e:Landroid/content/Context;

    const-string v2, "SmartAdServerCache"

    const-string v3, "pendingURLCalls.bin"

    invoke-static {v0, v2, v3}, Lcom/smartadserver/android/library/g/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .line 125
    iget-object v2, p0, Lcom/smartadserver/android/library/a/c;->e:Landroid/content/Context;

    const-string v3, "SmartAdServerCache"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 126
    new-instance v3, Ljava/io/File;

    const-string v4, "pendingURLCalls.bin"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 127
    invoke-static {v3}, Lcom/smartadserver/android/library/g/b;->a(Ljava/io/File;)V

    .line 128
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 134
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/smartadserver/android/library/a/c;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 128
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 137
    :cond_0
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/smartadserver/android/library/a/c;
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 56
    const-class v2, Lcom/smartadserver/android/library/a/c;

    monitor-enter v2

    if-eqz p0, :cond_0

    .line 59
    :try_start_0
    invoke-static {p0}, Lcom/smartadserver/android/library/g/c;->a(Landroid/content/Context;)Landroid/location/Location;

    .line 61
    const/4 v1, 0x0

    .line 62
    sget-object v3, Lcom/smartadserver/android/library/a/c;->c:Lcom/smartadserver/android/library/a/c;

    if-nez v3, :cond_1

    .line 63
    new-instance v1, Lcom/smartadserver/android/library/a/c;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/a/c;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/smartadserver/android/library/a/c;->c:Lcom/smartadserver/android/library/a/c;

    .line 66
    invoke-static {p0}, Lcom/smartadserver/android/library/g/b;->a(Landroid/content/Context;)V

    .line 73
    :goto_0
    if-eqz v0, :cond_0

    .line 76
    invoke-static {}, Lcom/smartadserver/android/library/g/c;->h()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/smartadserver/android/library/a/c$1;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/a/c$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 96
    :cond_0
    sget-object v0, Lcom/smartadserver/android/library/a/c;->c:Lcom/smartadserver/android/library/a/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v0

    .line 68
    :cond_1
    :try_start_1
    sget-object v3, Lcom/smartadserver/android/library/a/c;->c:Lcom/smartadserver/android/library/a/c;

    iget-object v3, v3, Lcom/smartadserver/android/library/a/c;->e:Landroid/content/Context;

    if-nez v3, :cond_2

    .line 69
    sget-object v1, Lcom/smartadserver/android/library/a/c;->c:Lcom/smartadserver/android/library/a/c;

    invoke-virtual {v1, p0}, Lcom/smartadserver/android/library/a/c;->b(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method static synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/smartadserver/android/library/a/c;->b:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/smartadserver/android/library/a/c;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/smartadserver/android/library/a/c;->a(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;
    .locals 8

    .prologue
    .line 223
    const/4 v7, 0x0

    .line 225
    :try_start_0
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :goto_0
    return-object v0

    .line 226
    :catch_0
    move-exception v2

    .line 228
    const-string v0, "/Diffx/ErrorHandler/RemoteErrorHandler.ashx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/smartadserver/android/library/a/c;->e:Landroid/content/Context;

    iget-object v3, p0, Lcom/smartadserver/android/library/a/c;->l:Ljava/lang/String;

    sget-object v4, Lcom/smartadserver/android/library/a/c;->a:Ljava/lang/String;

    const-string v5, ""

    const/16 v6, 0xa

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/smartadserver/android/library/exception/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    move-object v0, v7

    goto :goto_0
.end method

.method static synthetic a(Lcom/smartadserver/android/library/a/c;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/smartadserver/android/library/a/c;->b()V

    return-void
.end method

.method static synthetic a(Lcom/smartadserver/android/library/a/c;Lorg/apache/http/client/methods/HttpGet;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/smartadserver/android/library/a/c;->a(Lorg/apache/http/client/methods/HttpGet;)V

    return-void
.end method

.method private a(Lorg/apache/http/client/methods/HttpGet;)V
    .locals 5

    .prologue
    .line 200
    sget-object v1, Lcom/smartadserver/android/library/a/c;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/smartadserver/android/library/a/c;->g:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v0, p0, Lcom/smartadserver/android/library/a/c;->h:Ljava/util/Vector;

    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpGet;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v0, p0, Lcom/smartadserver/android/library/a/c;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/smartadserver/android/library/a/c;->h:Ljava/util/Vector;

    const-string v3, "SmartAdServerCache"

    const-string v4, "pendingURLCalls.bin"

    invoke-static {v0, v2, v3, v4}, Lcom/smartadserver/android/library/g/b;->a(Landroid/content/Context;Ljava/io/Serializable;Ljava/lang/String;Ljava/lang/String;)Z

    .line 204
    monitor-exit v1

    .line 205
    return-void

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Lorg/apache/http/client/methods/HttpGet;Z)V
    .locals 3

    .prologue
    .line 268
    new-instance v0, Lcom/smartadserver/android/library/a/a;

    iget-object v1, p0, Lcom/smartadserver/android/library/a/c;->l:Ljava/lang/String;

    const/16 v2, 0x3a98

    invoke-direct {v0, v1, v2}, Lcom/smartadserver/android/library/a/a;-><init>(Ljava/lang/String;I)V

    .line 270
    iget-object v1, p0, Lcom/smartadserver/android/library/a/c;->d:Lorg/apache/http/client/HttpClient;

    if-eqz v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/smartadserver/android/library/a/c;->d:Lorg/apache/http/client/HttpClient;

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/a/a;->a(Lorg/apache/http/client/HttpClient;)V

    .line 274
    :cond_0
    new-instance v1, Lcom/smartadserver/android/library/a/c$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/smartadserver/android/library/a/c$3;-><init>(Lcom/smartadserver/android/library/a/c;Lorg/apache/http/client/methods/HttpGet;Z)V

    invoke-virtual {v0, p1, v1}, Lcom/smartadserver/android/library/a/a;->a(Lorg/apache/http/client/methods/HttpGet;Lcom/smartadserver/android/library/a/b;)V

    .line 316
    return-void
.end method

.method static synthetic b(Lcom/smartadserver/android/library/a/c;)Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/smartadserver/android/library/a/c;->i:Ljava/util/Hashtable;

    return-object v0
.end method

.method private declared-synchronized b()V
    .locals 3

    .prologue
    .line 182
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/smartadserver/android/library/a/c;->e:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    .line 197
    :goto_0
    monitor-exit p0

    return-void

    .line 187
    :cond_0
    :try_start_1
    sget-object v1, Lcom/smartadserver/android/library/a/c;->b:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 189
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/smartadserver/android/library/a/c;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/smartadserver/android/library/g/c;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    invoke-direct {p0}, Lcom/smartadserver/android/library/a/c;->c()Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 191
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/smartadserver/android/library/a/c;->a(Lorg/apache/http/client/methods/HttpGet;Z)V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 193
    :catch_0
    move-exception v0

    .line 196
    :cond_1
    :try_start_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 182
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c()Lorg/apache/http/client/methods/HttpGet;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 208
    .line 209
    sget-object v1, Lcom/smartadserver/android/library/a/c;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/smartadserver/android/library/a/c;->g:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/methods/HttpGet;

    .line 211
    iget-object v2, p0, Lcom/smartadserver/android/library/a/c;->h:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 212
    iget-object v2, p0, Lcom/smartadserver/android/library/a/c;->e:Landroid/content/Context;

    iget-object v3, p0, Lcom/smartadserver/android/library/a/c;->h:Ljava/util/Vector;

    const-string v4, "SmartAdServerCache"

    const-string v5, "pendingURLCalls.bin"

    invoke-static {v2, v3, v4, v5}, Lcom/smartadserver/android/library/g/b;->a(Landroid/content/Context;Ljava/io/Serializable;Ljava/lang/String;Ljava/lang/String;)Z

    .line 213
    monitor-exit v1

    .line 214
    return-object v0

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 237
    monitor-enter p0

    if-nez p1, :cond_1

    .line 263
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 241
    :cond_1
    :try_start_0
    const-string v0, "["

    const-string v1, "%5B"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "]"

    const-string v2, "%5D"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 243
    iget-object v1, p0, Lcom/smartadserver/android/library/a/c;->e:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 248
    invoke-direct {p0, v0}, Lcom/smartadserver/android/library/a/c;->a(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 250
    if-eqz v0, :cond_0

    .line 252
    if-eqz p2, :cond_2

    .line 253
    iget-object v1, p0, Lcom/smartadserver/android/library/a/c;->i:Ljava/util/Hashtable;

    iget v2, p0, Lcom/smartadserver/android/library/a/c;->j:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    :cond_2
    iget-object v1, p0, Lcom/smartadserver/android/library/a/c;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/smartadserver/android/library/g/c;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 257
    invoke-direct {p0}, Lcom/smartadserver/android/library/a/c;->b()V

    .line 258
    invoke-direct {p0, v0, p2}, Lcom/smartadserver/android/library/a/c;->a(Lorg/apache/http/client/methods/HttpGet;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 259
    :cond_3
    if-eqz p2, :cond_0

    .line 260
    :try_start_1
    invoke-direct {p0, v0}, Lcom/smartadserver/android/library/a/c;->a(Lorg/apache/http/client/methods/HttpGet;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized b(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/smartadserver/android/library/a/c;->e:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_1

    .line 178
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 145
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/smartadserver/android/library/a/c;->e:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/smartadserver/android/library/a/c;->f:Landroid/content/BroadcastReceiver;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 148
    :try_start_2
    iget-object v0, p0, Lcom/smartadserver/android/library/a/c;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/smartadserver/android/library/a/c;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 149
    const-string v0, "SASHttpRequestManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UN-REGISTER for context "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smartadserver/android/library/a/c;->e:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 154
    :cond_2
    :goto_1
    :try_start_3
    iput-object p1, p0, Lcom/smartadserver/android/library/a/c;->e:Landroid/content/Context;

    .line 157
    iget-object v0, p0, Lcom/smartadserver/android/library/a/c;->f:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_3

    .line 158
    new-instance v0, Lcom/smartadserver/android/library/a/c$2;

    invoke-direct {v0, p0}, Lcom/smartadserver/android/library/a/c$2;-><init>(Lcom/smartadserver/android/library/a/c;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/a/c;->f:Landroid/content/BroadcastReceiver;

    .line 167
    :cond_3
    iget-object v0, p0, Lcom/smartadserver/android/library/a/c;->e:Landroid/content/Context;

    if-eqz v0, :cond_4

    .line 168
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, Lcom/smartadserver/android/library/a/c;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/smartadserver/android/library/a/c;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 170
    const-string v0, "SASHttpRequestManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attach to context "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smartadserver/android/library/a/c;->e:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 173
    :cond_4
    :try_start_4
    iget-object v0, p0, Lcom/smartadserver/android/library/a/c;->k:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/smartadserver/android/library/a/c;->k:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartadserver/android/library/a/c;->k:Ljava/util/Timer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    goto :goto_1
.end method
