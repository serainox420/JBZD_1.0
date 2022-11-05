.class Lcom/mopub/common/CacheService$b;
.super Landroid/os/AsyncTask;
.source "CacheService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/CacheService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:[B


# direct methods
.method constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    .prologue
    .line 230
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 231
    iput-object p1, p0, Lcom/mopub/common/CacheService$b;->a:Ljava/lang/String;

    .line 232
    iput-object p2, p0, Lcom/mopub/common/CacheService$b;->b:[B

    .line 233
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/mopub/common/CacheService$b;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/mopub/common/CacheService$b;->b:[B

    invoke-static {v0, v1}, Lcom/mopub/common/CacheService;->putToDiskCache(Ljava/lang/String;[B)Z

    .line 238
    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 226
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mopub/common/CacheService$b;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
