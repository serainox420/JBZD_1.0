.class public Lcom/millennialmedia/internal/utils/HttpUtils$Response;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/utils/HttpUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation


# instance fields
.field public adMetadata:Lcom/millennialmedia/internal/AdMetadata;

.field public bitmap:Landroid/graphics/Bitmap;

.field public code:I

.field public content:Ljava/lang/String;

.field public contentType:Ljava/lang/String;

.field public file:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
