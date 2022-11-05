.class Lcom/video/adsdk/internal/ADActivity$3;
.super Ljava/lang/Object;
.source "ADActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/video/adsdk/internal/ADActivity;->onPrefetchingDidComplete()V
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
    .line 334
    iput-object p1, p0, Lcom/video/adsdk/internal/ADActivity$3;->this$0:Lcom/video/adsdk/internal/ADActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/video/adsdk/internal/ADActivity$3;->this$0:Lcom/video/adsdk/internal/ADActivity;

    invoke-static {v0}, Lcom/video/adsdk/internal/ADActivity;->access$100(Lcom/video/adsdk/internal/ADActivity;)V

    .line 339
    return-void
.end method
