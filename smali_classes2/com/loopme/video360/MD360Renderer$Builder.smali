.class public Lcom/loopme/video360/MD360Renderer$Builder;
.super Ljava/lang/Object;
.source "MD360Renderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loopme/video360/MD360Renderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private contentType:I

.field private context:Landroid/content/Context;

.field private director:Lcom/loopme/video360/MD360Director;

.field private texture:Lcom/loopme/video360/texture/MD360Texture;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const/4 v0, 0x0

    iput v0, p0, Lcom/loopme/video360/MD360Renderer$Builder;->contentType:I

    .line 126
    return-void
.end method

.method synthetic constructor <init>(Lcom/loopme/video360/MD360Renderer$1;)V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/loopme/video360/MD360Renderer$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/loopme/video360/MD360Renderer$Builder;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/loopme/video360/MD360Renderer$Builder;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$002(Lcom/loopme/video360/MD360Renderer$Builder;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/loopme/video360/MD360Renderer$Builder;->context:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$100(Lcom/loopme/video360/MD360Renderer$Builder;)Lcom/loopme/video360/texture/MD360Texture;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/loopme/video360/MD360Renderer$Builder;->texture:Lcom/loopme/video360/texture/MD360Texture;

    return-object v0
.end method

.method static synthetic access$200(Lcom/loopme/video360/MD360Renderer$Builder;)Lcom/loopme/video360/MD360Director;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/loopme/video360/MD360Renderer$Builder;->director:Lcom/loopme/video360/MD360Director;

    return-object v0
.end method

.method static synthetic access$300(Lcom/loopme/video360/MD360Renderer$Builder;)I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/loopme/video360/MD360Renderer$Builder;->contentType:I

    return v0
.end method


# virtual methods
.method public build()Lcom/loopme/video360/MD360Renderer;
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/loopme/video360/MD360Renderer$Builder;->director:Lcom/loopme/video360/MD360Director;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/loopme/video360/MD360Director;->builder()Lcom/loopme/video360/MD360Director$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loopme/video360/MD360Director$Builder;->build()Lcom/loopme/video360/MD360Director;

    move-result-object v0

    iput-object v0, p0, Lcom/loopme/video360/MD360Renderer$Builder;->director:Lcom/loopme/video360/MD360Director;

    .line 130
    :cond_0
    new-instance v0, Lcom/loopme/video360/MD360Renderer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/loopme/video360/MD360Renderer;-><init>(Lcom/loopme/video360/MD360Renderer$Builder;Lcom/loopme/video360/MD360Renderer$1;)V

    return-object v0
.end method

.method public setContentType(I)Lcom/loopme/video360/MD360Renderer$Builder;
    .locals 0

    .prologue
    .line 134
    iput p1, p0, Lcom/loopme/video360/MD360Renderer$Builder;->contentType:I

    .line 135
    return-object p0
.end method

.method public setDirector(Lcom/loopme/video360/MD360Director;)Lcom/loopme/video360/MD360Renderer$Builder;
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/loopme/video360/MD360Renderer$Builder;->director:Lcom/loopme/video360/MD360Director;

    .line 151
    return-object p0
.end method

.method public setTexture(Lcom/loopme/video360/texture/MD360Texture;)Lcom/loopme/video360/MD360Renderer$Builder;
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/loopme/video360/MD360Renderer$Builder;->texture:Lcom/loopme/video360/texture/MD360Texture;

    .line 146
    return-object p0
.end method
