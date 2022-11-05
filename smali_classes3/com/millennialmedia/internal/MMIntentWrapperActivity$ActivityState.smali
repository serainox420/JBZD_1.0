.class Lcom/millennialmedia/internal/MMIntentWrapperActivity$ActivityState;
.super Ljava/lang/Object;
.source "MMIntentWrapperActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/MMIntentWrapperActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityState"
.end annotation


# instance fields
.field a:Ljava/util/concurrent/CountDownLatch;

.field b:Lcom/millennialmedia/internal/MMIntentWrapperActivity$MMIntentWrapperListener;

.field c:Landroid/content/Intent;


# direct methods
.method private constructor <init>(Lcom/millennialmedia/internal/MMIntentWrapperActivity$MMIntentWrapperListener;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/millennialmedia/internal/MMIntentWrapperActivity$ActivityState;->a:Ljava/util/concurrent/CountDownLatch;

    .line 45
    iput-object p1, p0, Lcom/millennialmedia/internal/MMIntentWrapperActivity$ActivityState;->b:Lcom/millennialmedia/internal/MMIntentWrapperActivity$MMIntentWrapperListener;

    .line 46
    iput-object p2, p0, Lcom/millennialmedia/internal/MMIntentWrapperActivity$ActivityState;->c:Landroid/content/Intent;

    .line 47
    return-void
.end method

.method synthetic constructor <init>(Lcom/millennialmedia/internal/MMIntentWrapperActivity$MMIntentWrapperListener;Landroid/content/Intent;Lcom/millennialmedia/internal/MMIntentWrapperActivity$1;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/internal/MMIntentWrapperActivity$ActivityState;-><init>(Lcom/millennialmedia/internal/MMIntentWrapperActivity$MMIntentWrapperListener;Landroid/content/Intent;)V

    return-void
.end method
