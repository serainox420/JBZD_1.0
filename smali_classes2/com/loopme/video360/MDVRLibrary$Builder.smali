.class public Lcom/loopme/video360/MDVRLibrary$Builder;
.super Ljava/lang/Object;
.source "MDVRLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loopme/video360/MDVRLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private contentType:I

.field private context:Landroid/content/Context;

.field private glSurfaceView:Landroid/opengl/GLSurfaceView;

.field private texture:Lcom/loopme/video360/texture/MD360Texture;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    const/4 v0, 0x0

    iput v0, p0, Lcom/loopme/video360/MDVRLibrary$Builder;->contentType:I

    .line 148
    iput-object p1, p0, Lcom/loopme/video360/MDVRLibrary$Builder;->context:Landroid/content/Context;

    .line 149
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/loopme/video360/MDVRLibrary$1;)V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/loopme/video360/MDVRLibrary$Builder;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/loopme/video360/MDVRLibrary$Builder;)I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/loopme/video360/MDVRLibrary$Builder;->contentType:I

    return v0
.end method

.method static synthetic access$100(Lcom/loopme/video360/MDVRLibrary$Builder;)Lcom/loopme/video360/texture/MD360Texture;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/loopme/video360/MDVRLibrary$Builder;->texture:Lcom/loopme/video360/texture/MD360Texture;

    return-object v0
.end method

.method static synthetic access$200(Lcom/loopme/video360/MDVRLibrary$Builder;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/loopme/video360/MDVRLibrary$Builder;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/loopme/video360/MDVRLibrary$Builder;)Landroid/opengl/GLSurfaceView;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/loopme/video360/MDVRLibrary$Builder;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    return-object v0
.end method


# virtual methods
.method public build(Landroid/opengl/GLSurfaceView;)Lcom/loopme/video360/MDVRLibrary;
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/loopme/video360/MDVRLibrary$Builder;->texture:Lcom/loopme/video360/texture/MD360Texture;

    const-string v1, "You must call video/bitmap function in before build"

    invoke-static {v0, v1}, Lcom/loopme/video360/common/VRUtil;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    iput-object p1, p0, Lcom/loopme/video360/MDVRLibrary$Builder;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 160
    new-instance v0, Lcom/loopme/video360/MDVRLibrary;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/loopme/video360/MDVRLibrary;-><init>(Lcom/loopme/video360/MDVRLibrary$Builder;Lcom/loopme/video360/MDVRLibrary$1;)V

    return-object v0
.end method

.method public video(Lcom/loopme/video360/MDVRLibrary$IOnSurfaceReadyCallback;)Lcom/loopme/video360/MDVRLibrary$Builder;
    .locals 1

    .prologue
    .line 152
    new-instance v0, Lcom/loopme/video360/texture/MD360VideoTexture;

    invoke-direct {v0, p1}, Lcom/loopme/video360/texture/MD360VideoTexture;-><init>(Lcom/loopme/video360/MDVRLibrary$IOnSurfaceReadyCallback;)V

    iput-object v0, p0, Lcom/loopme/video360/MDVRLibrary$Builder;->texture:Lcom/loopme/video360/texture/MD360Texture;

    .line 153
    const/4 v0, 0x0

    iput v0, p0, Lcom/loopme/video360/MDVRLibrary$Builder;->contentType:I

    .line 154
    return-object p0
.end method
