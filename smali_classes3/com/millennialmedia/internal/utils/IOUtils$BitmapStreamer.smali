.class public Lcom/millennialmedia/internal/utils/IOUtils$BitmapStreamer;
.super Ljava/lang/Object;
.source "IOUtils.java"

# interfaces
.implements Lcom/millennialmedia/internal/utils/HttpUtils$ResponseStreamer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/utils/IOUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitmapStreamer"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public streamContent(Ljava/io/InputStream;Lcom/millennialmedia/internal/utils/HttpUtils$Response;)V
    .locals 1

    .prologue
    .line 151
    invoke-static {p1}, Lcom/millennialmedia/internal/utils/IOUtils;->convertStreamToBitmap(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p2, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->bitmap:Landroid/graphics/Bitmap;

    .line 152
    return-void
.end method
