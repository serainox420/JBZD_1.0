.class Lcom/openx/model/video/VideoPlayer$13;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Lcom/openx/model/vast/VideoAdRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/model/video/VideoPlayer;->setOnVideoAdRequestListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openx/model/video/VideoPlayer;


# direct methods
.method constructor <init>(Lcom/openx/model/video/VideoPlayer;)V
    .locals 0

    .prologue
    .line 1452
    iput-object p1, p0, Lcom/openx/model/video/VideoPlayer$13;->this$0:Lcom/openx/model/video/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdRequested()V
    .locals 0

    .prologue
    .line 1458
    return-void
.end method
