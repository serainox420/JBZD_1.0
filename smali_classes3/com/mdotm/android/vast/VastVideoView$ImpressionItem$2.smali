.class Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$2;
.super Ljava/lang/Object;
.source "VastVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->sendImpression(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

.field private final synthetic val$eventUrl:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$2;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    iput-object p2, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$2;->val$eventUrl:Ljava/util/ArrayList;

    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 404
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$2;->val$eventUrl:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 405
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$2;->val$eventUrl:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 413
    :goto_1
    return-void

    .line 406
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "Event URL"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$2;->val$eventUrl:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 407
    invoke-static {}, Lcom/mdotm/android/utils/MdotMUtils;->getUtilsInstance()Lcom/mdotm/android/utils/MdotMUtils;

    move-result-object v2

    .line 408
    iget-object v0, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$2;->val$eventUrl:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem$2;->this$1:Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;

    invoke-static {v3}, Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;->access$2(Lcom/mdotm/android/vast/VastVideoView$ImpressionItem;)Lcom/mdotm/android/vast/VastVideoView;

    move-result-object v3

    invoke-static {v3}, Lcom/mdotm/android/vast/VastVideoView;->access$9(Lcom/mdotm/android/vast/VastVideoView;)Landroid/content/Context;

    move-result-object v3

    .line 407
    invoke-virtual {v2, v0, v3}, Lcom/mdotm/android/utils/MdotMUtils;->reportImpression(Ljava/lang/String;Landroid/content/Context;)V

    .line 405
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 411
    :cond_1
    const-string v0, "Event URL null"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method
