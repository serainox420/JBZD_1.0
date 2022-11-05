.class Lcom/loopme/video360/MD360Program$FragmentShaderFactory;
.super Ljava/lang/Object;
.source "MD360Program.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loopme/video360/MD360Program;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FragmentShaderFactory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fs(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    .line 91
    sget v0, Lcom/loopme/R$raw;->per_pixel_fragment_shader:I

    .line 94
    invoke-static {p0, v0}, Lcom/loopme/video360/common/GLUtil;->readTextFileFromRaw(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
