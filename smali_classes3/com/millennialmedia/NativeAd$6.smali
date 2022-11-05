.class Lcom/millennialmedia/NativeAd$6;
.super Ljava/lang/Object;
.source "NativeAd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/NativeAd;->a(Landroid/view/View;Lcom/millennialmedia/NativeAd$ComponentName;ILcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/AdPlacementReporter;

.field final synthetic b:Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;

.field final synthetic c:Lcom/millennialmedia/NativeAd$ComponentName;

.field final synthetic d:I

.field final synthetic e:Lcom/millennialmedia/NativeAd;


# direct methods
.method constructor <init>(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/AdPlacementReporter;Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;Lcom/millennialmedia/NativeAd$ComponentName;I)V
    .locals 0

    .prologue
    .line 1379
    iput-object p1, p0, Lcom/millennialmedia/NativeAd$6;->e:Lcom/millennialmedia/NativeAd;

    iput-object p2, p0, Lcom/millennialmedia/NativeAd$6;->a:Lcom/millennialmedia/internal/AdPlacementReporter;

    iput-object p3, p0, Lcom/millennialmedia/NativeAd$6;->b:Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;

    iput-object p4, p0, Lcom/millennialmedia/NativeAd$6;->c:Lcom/millennialmedia/NativeAd$ComponentName;

    iput p5, p0, Lcom/millennialmedia/NativeAd$6;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 1383
    invoke-static {}, Lcom/millennialmedia/NativeAd;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ad clicked"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1385
    iget-object v0, p0, Lcom/millennialmedia/NativeAd$6;->e:Lcom/millennialmedia/NativeAd;

    iget-object v1, p0, Lcom/millennialmedia/NativeAd$6;->a:Lcom/millennialmedia/internal/AdPlacementReporter;

    iget-object v2, p0, Lcom/millennialmedia/NativeAd$6;->b:Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;

    invoke-static {v0, v1, v2}, Lcom/millennialmedia/NativeAd;->a(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/AdPlacementReporter;Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;)V

    .line 1389
    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/NativeAd$6;->e:Lcom/millennialmedia/NativeAd;

    invoke-static {v0}, Lcom/millennialmedia/NativeAd;->e(Lcom/millennialmedia/NativeAd;)Lcom/millennialmedia/internal/adadapters/NativeAdapter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "onAdClicked"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1390
    iget-object v1, p0, Lcom/millennialmedia/NativeAd$6;->e:Lcom/millennialmedia/NativeAd;

    invoke-static {v1}, Lcom/millennialmedia/NativeAd;->e(Lcom/millennialmedia/NativeAd;)Lcom/millennialmedia/internal/adadapters/NativeAdapter;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1396
    :goto_0
    iget-object v0, p0, Lcom/millennialmedia/NativeAd$6;->e:Lcom/millennialmedia/NativeAd;

    invoke-static {v0}, Lcom/millennialmedia/NativeAd;->f(Lcom/millennialmedia/NativeAd;)Lcom/millennialmedia/NativeAd$NativeListener;

    move-result-object v0

    .line 1397
    if-eqz v0, :cond_0

    .line 1398
    new-instance v1, Lcom/millennialmedia/NativeAd$6$1;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/NativeAd$6$1;-><init>(Lcom/millennialmedia/NativeAd$6;Lcom/millennialmedia/NativeAd$NativeListener;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOffUiThread(Ljava/lang/Runnable;)V

    .line 1407
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/NativeAd$6;->e:Lcom/millennialmedia/NativeAd;

    const-string v1, "click"

    iget-object v2, p0, Lcom/millennialmedia/NativeAd$6;->b:Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;

    iget-object v2, v2, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;->clickUrl:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/millennialmedia/NativeAd;->a(Lcom/millennialmedia/NativeAd;Ljava/lang/String;Ljava/lang/String;)V

    .line 1408
    return-void

    .line 1391
    :catch_0
    move-exception v0

    goto :goto_0
.end method
