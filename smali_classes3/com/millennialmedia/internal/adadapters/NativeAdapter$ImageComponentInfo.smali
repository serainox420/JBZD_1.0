.class public Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;
.super Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;
.source "NativeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/adadapters/NativeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageComponentInfo"
.end annotation


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public bitmapUrl:Ljava/lang/String;

.field public height:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;-><init>()V

    return-void
.end method
