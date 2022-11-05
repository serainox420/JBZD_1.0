.class Lcom/video/adsdk/internal/ADActivity$4;
.super Ljava/lang/Object;
.source "ADActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/video/adsdk/internal/ADActivity;->onPrefetchedFile(Lcom/video/adsdk/internal/ADVideoFile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/video/adsdk/internal/ADActivity;


# direct methods
.method constructor <init>(Lcom/video/adsdk/internal/ADActivity;)V
    .locals 0

    .prologue
    .line 345
    iput-object p1, p0, Lcom/video/adsdk/internal/ADActivity$4;->this$0:Lcom/video/adsdk/internal/ADActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/video/adsdk/internal/ADActivity$4;->this$0:Lcom/video/adsdk/internal/ADActivity;

    invoke-static {v0}, Lcom/video/adsdk/internal/ADActivity;->access$100(Lcom/video/adsdk/internal/ADActivity;)V

    .line 351
    return-void
.end method
