.class public abstract Lcom/flurry/android/tumblr/Post;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final e:Ljava/lang/String;

.field private static g:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:I

.field private f:Lcom/flurry/android/tumblr/PostListener;

.field private final h:Lcom/flurry/sdk/kh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kh",
            "<",
            "Lcom/flurry/sdk/eh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    const-class v0, Lcom/flurry/android/tumblr/Post;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/tumblr/Post;->e:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/flurry/android/tumblr/Post;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/android/tumblr/Post;->d:I

    .line 34
    new-instance v0, Lcom/flurry/android/tumblr/Post$1;

    invoke-direct {v0, p0}, Lcom/flurry/android/tumblr/Post$1;-><init>(Lcom/flurry/android/tumblr/Post;)V

    iput-object v0, p0, Lcom/flurry/android/tumblr/Post;->h:Lcom/flurry/sdk/kh;

    .line 85
    sget-object v0, Lcom/flurry/android/tumblr/Post;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lcom/flurry/android/tumblr/Post;->d:I

    .line 86
    invoke-static {}, Lcom/flurry/sdk/ki;->a()Lcom/flurry/sdk/ki;

    move-result-object v0

    const-string v1, "com.flurry.android.impl.analytics.tumblr.TumblrEvents"

    iget-object v2, p0, Lcom/flurry/android/tumblr/Post;->h:Lcom/flurry/sdk/kh;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/ki;->a(Ljava/lang/String;Lcom/flurry/sdk/kh;)V

    .line 87
    return-void
.end method

.method static synthetic a(Lcom/flurry/android/tumblr/Post;)I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/flurry/android/tumblr/Post;->d:I

    return v0
.end method

.method static synthetic b(Lcom/flurry/android/tumblr/Post;)Lcom/flurry/android/tumblr/PostListener;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/flurry/android/tumblr/Post;->f:Lcom/flurry/android/tumblr/PostListener;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/flurry/android/tumblr/Post;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/flurry/android/tumblr/Post;)Lcom/flurry/sdk/kh;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/flurry/android/tumblr/Post;->h:Lcom/flurry/sdk/kh;

    return-object v0
.end method


# virtual methods
.method abstract a()Landroid/os/Bundle;
.end method

.method public setAndroidDeeplink(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/flurry/android/tumblr/Post;->b:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setIOSDeepLink(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/flurry/android/tumblr/Post;->a:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setPostListener(Lcom/flurry/android/tumblr/PostListener;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/flurry/android/tumblr/Post;->f:Lcom/flurry/android/tumblr/PostListener;

    .line 124
    return-void
.end method

.method public setWebLink(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/flurry/android/tumblr/Post;->c:Ljava/lang/String;

    .line 114
    return-void
.end method
