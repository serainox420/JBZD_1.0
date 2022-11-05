.class Lcom/millennialmedia/internal/MMActivity$ActivityState;
.super Ljava/lang/Object;
.source "MMActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/MMActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityState"
.end annotation


# instance fields
.field a:Ljava/util/concurrent/CountDownLatch;

.field b:Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

.field c:Lcom/millennialmedia/internal/MMActivity$MMActivityListener;


# direct methods
.method private constructor <init>(Lcom/millennialmedia/internal/MMActivity$MMActivityListener;Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/millennialmedia/internal/MMActivity$ActivityState;->a:Ljava/util/concurrent/CountDownLatch;

    .line 58
    iput-object p1, p0, Lcom/millennialmedia/internal/MMActivity$ActivityState;->c:Lcom/millennialmedia/internal/MMActivity$MMActivityListener;

    .line 59
    iput-object p2, p0, Lcom/millennialmedia/internal/MMActivity$ActivityState;->b:Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

    .line 60
    return-void
.end method

.method synthetic constructor <init>(Lcom/millennialmedia/internal/MMActivity$MMActivityListener;Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;Lcom/millennialmedia/internal/MMActivity$1;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/internal/MMActivity$ActivityState;-><init>(Lcom/millennialmedia/internal/MMActivity$MMActivityListener;Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)V

    return-void
.end method
