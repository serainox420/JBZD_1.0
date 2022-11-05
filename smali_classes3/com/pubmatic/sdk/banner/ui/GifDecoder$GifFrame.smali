.class Lcom/pubmatic/sdk/banner/ui/GifDecoder$GifFrame;
.super Ljava/lang/Object;
.source "GifDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/banner/ui/GifDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GifFrame"
.end annotation


# instance fields
.field public delay:I

.field public image:[I


# direct methods
.method public constructor <init>([II)V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder$GifFrame;->image:[I

    .line 92
    iput p2, p0, Lcom/pubmatic/sdk/banner/ui/GifDecoder$GifFrame;->delay:I

    .line 93
    return-void
.end method
