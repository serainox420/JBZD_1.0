.class public Lcom/millennialmedia/internal/AdContainer;
.super Landroid/widget/RelativeLayout;
.source "AdContainer.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/millennialmedia/internal/AdContainer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/AdContainer;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 30
    iput-object p2, p0, Lcom/millennialmedia/internal/AdContainer;->b:Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;

    .line 31
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 37
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 39
    iget-object v0, p0, Lcom/millennialmedia/internal/AdContainer;->b:Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;

    if-nez v0, :cond_1

    .line 40
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    sget-object v0, Lcom/millennialmedia/internal/AdContainer;->a:Ljava/lang/String;

    const-string v1, "AdContainer not listening for activity lifecycle events, skipping activity lifecycle dispatcher registration"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    invoke-static {p0}, Lcom/millennialmedia/internal/utils/ViewUtils;->getActivityHashForView(Landroid/view/View;)I

    move-result v0

    .line 49
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 50
    sget-object v0, Lcom/millennialmedia/internal/AdContainer;->a:Ljava/lang/String;

    const-string v1, "Unable to register activity lifecycle listener for AdContainer, no valid activity hash"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_2
    iget-object v1, p0, Lcom/millennialmedia/internal/AdContainer;->b:Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/ActivityListenerManager;->registerListener(ILcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;)V

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 61
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 63
    iget-object v0, p0, Lcom/millennialmedia/internal/AdContainer;->b:Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;

    if-nez v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-static {p0}, Lcom/millennialmedia/internal/utils/ViewUtils;->getActivityHashForView(Landroid/view/View;)I

    move-result v0

    .line 68
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 69
    sget-object v0, Lcom/millennialmedia/internal/AdContainer;->a:Ljava/lang/String;

    const-string v1, "Unable to unregister activity lifecycle listener for AdContainer, no valid activity hash"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_1
    iget-object v1, p0, Lcom/millennialmedia/internal/AdContainer;->b:Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/ActivityListenerManager;->unregisterListener(ILcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;)V

    goto :goto_0
.end method
