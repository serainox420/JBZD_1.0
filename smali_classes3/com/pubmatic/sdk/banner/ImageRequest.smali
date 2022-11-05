.class public Lcom/pubmatic/sdk/banner/ImageRequest;
.super Ljava/lang/Object;
.source "ImageRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubmatic/sdk/banner/ImageRequest$Handler;,
        Lcom/pubmatic/sdk/banner/ImageRequest$RequestProcessor;
    }
.end annotation


# instance fields
.field private handler:Lcom/pubmatic/sdk/banner/ImageRequest$Handler;

.field private final timeout:I

.field private final url:Ljava/lang/String;

.field private final useGifDecoder:Z

.field private final userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;ZLcom/pubmatic/sdk/banner/ImageRequest$Handler;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/ImageRequest;->handler:Lcom/pubmatic/sdk/banner/ImageRequest$Handler;

    .line 51
    iput p1, p0, Lcom/pubmatic/sdk/banner/ImageRequest;->timeout:I

    .line 52
    iput-object p2, p0, Lcom/pubmatic/sdk/banner/ImageRequest;->url:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lcom/pubmatic/sdk/banner/ImageRequest;->userAgent:Ljava/lang/String;

    .line 54
    iput-boolean p4, p0, Lcom/pubmatic/sdk/banner/ImageRequest;->useGifDecoder:Z

    .line 55
    iput-object p5, p0, Lcom/pubmatic/sdk/banner/ImageRequest;->handler:Lcom/pubmatic/sdk/banner/ImageRequest$Handler;

    .line 56
    return-void
.end method

.method static synthetic access$100(Lcom/pubmatic/sdk/banner/ImageRequest;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/ImageRequest;->url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/pubmatic/sdk/banner/ImageRequest;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/pubmatic/sdk/banner/ImageRequest;->timeout:I

    return v0
.end method

.method static synthetic access$300(Lcom/pubmatic/sdk/banner/ImageRequest;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/ImageRequest;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/pubmatic/sdk/banner/ImageRequest;)Lcom/pubmatic/sdk/banner/ImageRequest$Handler;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/ImageRequest;->handler:Lcom/pubmatic/sdk/banner/ImageRequest$Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/pubmatic/sdk/banner/ImageRequest;)Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/pubmatic/sdk/banner/ImageRequest;->useGifDecoder:Z

    return v0
.end method

.method public static create(ILjava/lang/String;Ljava/lang/String;ZLcom/pubmatic/sdk/banner/ImageRequest$Handler;)Lcom/pubmatic/sdk/banner/ImageRequest;
    .locals 6

    .prologue
    .line 34
    if-nez p4, :cond_0

    .line 35
    const/4 v0, 0x0

    .line 40
    :goto_0
    return-object v0

    .line 37
    :cond_0
    new-instance v0, Lcom/pubmatic/sdk/banner/ImageRequest;

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/pubmatic/sdk/banner/ImageRequest;-><init>(ILjava/lang/String;Ljava/lang/String;ZLcom/pubmatic/sdk/banner/ImageRequest$Handler;)V

    .line 39
    invoke-direct {v0}, Lcom/pubmatic/sdk/banner/ImageRequest;->start()V

    goto :goto_0
.end method

.method private start()V
    .locals 2

    .prologue
    .line 63
    new-instance v0, Lcom/pubmatic/sdk/banner/ImageRequest$RequestProcessor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/pubmatic/sdk/banner/ImageRequest$RequestProcessor;-><init>(Lcom/pubmatic/sdk/banner/ImageRequest;Lcom/pubmatic/sdk/banner/ImageRequest$1;)V

    .line 64
    invoke-static {}, Lcom/pubmatic/sdk/banner/Background;->getExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 65
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/ImageRequest;->handler:Lcom/pubmatic/sdk/banner/ImageRequest$Handler;

    .line 60
    return-void
.end method
