.class Lcom/adcolony/sdk/bi$a;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adcolony/sdk/bi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/bi;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/bi;)V
    .locals 0

    .prologue
    .line 691
    iput-object p1, p0, Lcom/adcolony/sdk/bi$a;->a:Lcom/adcolony/sdk/bi;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method private a(Landroid/webkit/WebView;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 722
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/bi$a;->a:Lcom/adcolony/sdk/bi;

    iget-object v0, v0, Lcom/adcolony/sdk/bi;->J:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 723
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/bi$a;->a:Lcom/adcolony/sdk/bi;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bi;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unknown err with webview\'s URL"

    invoke-static {v0, v1, v6}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 768
    :cond_1
    :goto_0
    return-void

    .line 728
    :cond_2
    iget-object v0, p0, Lcom/adcolony/sdk/bi$a;->a:Lcom/adcolony/sdk/bi;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bi;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageFinished "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getProgress()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 729
    iget-object v0, p0, Lcom/adcolony/sdk/bi$a;->a:Lcom/adcolony/sdk/bi;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bi;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " catalogUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adcolony/sdk/bi$a;->a:Lcom/adcolony/sdk/bi;

    invoke-static {v2}, Lcom/adcolony/sdk/bi;->a(Lcom/adcolony/sdk/bi;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 731
    iget-object v0, p0, Lcom/adcolony/sdk/bi$a;->a:Lcom/adcolony/sdk/bi;

    iget-object v0, v0, Lcom/adcolony/sdk/bi;->E:Lcom/adcolony/sdk/bi$d;

    sget-object v1, Lcom/adcolony/sdk/bi$d;->b:Lcom/adcolony/sdk/bi$d;

    if-ne v0, v1, :cond_3

    .line 732
    iget-object v0, p0, Lcom/adcolony/sdk/bi$a;->a:Lcom/adcolony/sdk/bi;

    sget-object v1, Lcom/adcolony/sdk/bi$d;->c:Lcom/adcolony/sdk/bi$d;

    iput-object v1, v0, Lcom/adcolony/sdk/bi;->E:Lcom/adcolony/sdk/bi$d;

    .line 733
    iget-object v0, p0, Lcom/adcolony/sdk/bi$a;->a:Lcom/adcolony/sdk/bi;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/adcolony/sdk/bi$a;->a:Lcom/adcolony/sdk/bi;

    iget-wide v4, v1, Lcom/adcolony/sdk/bi;->t:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/adcolony/sdk/bi;->u:J

    .line 734
    iget-object v0, p0, Lcom/adcolony/sdk/bi$a;->a:Lcom/adcolony/sdk/bi;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bi;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoadTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adcolony/sdk/bi$a;->a:Lcom/adcolony/sdk/bi;

    iget-wide v2, v2, Lcom/adcolony/sdk/bi;->u:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 739
    :cond_3
    iget-object v0, p0, Lcom/adcolony/sdk/bi$a;->a:Lcom/adcolony/sdk/bi;

    iget-object v0, v0, Lcom/adcolony/sdk/bi;->J:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/adcolony/sdk/bi$a;->a:Lcom/adcolony/sdk/bi;

    iget-object v0, v0, Lcom/adcolony/sdk/bi;->E:Lcom/adcolony/sdk/bi$d;

    sget-object v1, Lcom/adcolony/sdk/bi$d;->a:Lcom/adcolony/sdk/bi$d;

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/adcolony/sdk/bi$a;->a:Lcom/adcolony/sdk/bi;

    .line 740
    invoke-static {v0}, Lcom/adcolony/sdk/bi;->a(Lcom/adcolony/sdk/bi;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 741
    invoke-virtual {p1}, Landroid/webkit/WebView;->isShown()Z

    move-result v0

    if-nez v0, :cond_4

    .line 742
    invoke-virtual {p1, v7}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 744
    :cond_4
    invoke-virtual {p1}, Landroid/webkit/WebView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 745
    iget-object v0, p0, Lcom/adcolony/sdk/bi$a;->a:Lcom/adcolony/sdk/bi;

    iget-object v1, p0, Lcom/adcolony/sdk/bi$a;->a:Lcom/adcolony/sdk/bi;

    invoke-static {v1}, Lcom/adcolony/sdk/bi;->a(Lcom/adcolony/sdk/bi;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/adcolony/sdk/bi;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 747
    iget-object v0, p0, Lcom/adcolony/sdk/bi$a;->a:Lcom/adcolony/sdk/bi;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/adcolony/sdk/bi;->t:J

    .line 754
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/adcolony/sdk/bi$a;->a:Lcom/adcolony/sdk/bi;

    iget-object v0, v0, Lcom/adcolony/sdk/bi;->E:Lcom/adcolony/sdk/bi$d;

    sget-object v1, Lcom/adcolony/sdk/bi$d;->a:Lcom/adcolony/sdk/bi$d;

    if-ne v0, v1, :cond_6

    .line 755
    iget-object v0, p0, Lcom/adcolony/sdk/bi$a;->a:Lcom/adcolony/sdk/bi;

    sget-object v1, Lcom/adcolony/sdk/bi$d;->b:Lcom/adcolony/sdk/bi$d;

    iput-object v1, v0, Lcom/adcolony/sdk/bi;->E:Lcom/adcolony/sdk/bi$d;

    .line 758
    :cond_6
    iget-object v0, p0, Lcom/adcolony/sdk/bi$a;->a:Lcom/adcolony/sdk/bi;

    iget-object v0, v0, Lcom/adcolony/sdk/bi;->E:Lcom/adcolony/sdk/bi$d;

    sget-object v1, Lcom/adcolony/sdk/bi$d;->c:Lcom/adcolony/sdk/bi$d;

    if-ne v0, v1, :cond_7

    .line 759
    iget-object v0, p0, Lcom/adcolony/sdk/bi$a;->a:Lcom/adcolony/sdk/bi;

    sget-object v1, Lcom/adcolony/sdk/bi$d;->d:Lcom/adcolony/sdk/bi$d;

    iput-object v1, v0, Lcom/adcolony/sdk/bi;->E:Lcom/adcolony/sdk/bi$d;

    .line 762
    :cond_7
    iget-object v0, p0, Lcom/adcolony/sdk/bi$a;->a:Lcom/adcolony/sdk/bi;

    iget-object v0, v0, Lcom/adcolony/sdk/bi;->F:Lcom/adcolony/sdk/bi$f;

    sget-object v1, Lcom/adcolony/sdk/bi$f;->e:Lcom/adcolony/sdk/bi$f;

    if-ne v0, v1, :cond_1

    .line 764
    iget-object v0, p0, Lcom/adcolony/sdk/bi$a;->a:Lcom/adcolony/sdk/bi;

    iput-boolean v7, v0, Lcom/adcolony/sdk/bi;->o:Z

    .line 765
    iget-object v0, p0, Lcom/adcolony/sdk/bi$a;->a:Lcom/adcolony/sdk/bi;

    iget-object v0, v0, Lcom/adcolony/sdk/bi;->H:Lcom/adcolony/sdk/by;

    iget-object v1, p0, Lcom/adcolony/sdk/bi$a;->a:Lcom/adcolony/sdk/bi;

    iget-object v1, v1, Lcom/adcolony/sdk/bi;->G:Lcom/adcolony/sdk/bi$e;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/by;->b(Lcom/adcolony/sdk/bv;)V

    goto/16 :goto_0

    .line 750
    :cond_8
    invoke-static {}, Lcom/adcolony/sdk/cp;->b()Lcom/adcolony/sdk/cp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/cp;->d()V

    goto :goto_1
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 4

    .prologue
    .line 694
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 696
    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/bi$a;->a:Lcom/adcolony/sdk/bi;

    iput p2, v0, Lcom/adcolony/sdk/bi;->K:I

    .line 697
    const-string v0, "WebChromeClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "progress changed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 698
    const/16 v0, 0x64

    if-ge p2, v0, :cond_3

    .line 699
    iget-object v0, p0, Lcom/adcolony/sdk/bi$a;->a:Lcom/adcolony/sdk/bi;

    iget-object v0, v0, Lcom/adcolony/sdk/bi;->F:Lcom/adcolony/sdk/bi$f;

    sget-object v1, Lcom/adcolony/sdk/bi$f;->a:Lcom/adcolony/sdk/bi$f;

    if-ne v0, v1, :cond_2

    .line 700
    iget-object v0, p0, Lcom/adcolony/sdk/bi$a;->a:Lcom/adcolony/sdk/bi;

    sget-object v1, Lcom/adcolony/sdk/bi$f;->b:Lcom/adcolony/sdk/bi$f;

    iput-object v1, v0, Lcom/adcolony/sdk/bi;->F:Lcom/adcolony/sdk/bi$f;

    .line 704
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/adcolony/sdk/bi$a;->a:Lcom/adcolony/sdk/bi;

    iget-boolean v0, v0, Lcom/adcolony/sdk/bi;->o:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adcolony/sdk/bi$a;->a:Lcom/adcolony/sdk/bi;

    iget-object v0, v0, Lcom/adcolony/sdk/bi;->E:Lcom/adcolony/sdk/bi$d;

    sget-object v1, Lcom/adcolony/sdk/bi$d;->e:Lcom/adcolony/sdk/bi$d;

    if-eq v0, v1, :cond_1

    .line 705
    iget-object v0, p0, Lcom/adcolony/sdk/bi$a;->a:Lcom/adcolony/sdk/bi;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/adcolony/sdk/bi;->o:Z

    .line 706
    iget-object v0, p0, Lcom/adcolony/sdk/bi$a;->a:Lcom/adcolony/sdk/bi;

    iget-object v0, v0, Lcom/adcolony/sdk/bi;->H:Lcom/adcolony/sdk/by;

    iget-object v1, p0, Lcom/adcolony/sdk/bi$a;->a:Lcom/adcolony/sdk/bi;

    iget-object v1, v1, Lcom/adcolony/sdk/bi;->G:Lcom/adcolony/sdk/bi$e;

    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/bz;->at()Lcom/adcolony/sdk/bm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/bm;->A()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/adcolony/sdk/by;->b(Lcom/adcolony/sdk/bv;J)V

    .line 719
    :cond_1
    :goto_1
    return-void

    .line 701
    :cond_2
    iget-object v0, p0, Lcom/adcolony/sdk/bi$a;->a:Lcom/adcolony/sdk/bi;

    iget-object v0, v0, Lcom/adcolony/sdk/bi;->F:Lcom/adcolony/sdk/bi$f;

    sget-object v1, Lcom/adcolony/sdk/bi$f;->c:Lcom/adcolony/sdk/bi$f;

    if-ne v0, v1, :cond_0

    .line 702
    iget-object v0, p0, Lcom/adcolony/sdk/bi$a;->a:Lcom/adcolony/sdk/bi;

    sget-object v1, Lcom/adcolony/sdk/bi$f;->d:Lcom/adcolony/sdk/bi$f;

    iput-object v1, v0, Lcom/adcolony/sdk/bi;->F:Lcom/adcolony/sdk/bi$f;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 716
    :catch_0
    move-exception v0

    .line 717
    iget-object v1, p0, Lcom/adcolony/sdk/bi$a;->a:Lcom/adcolony/sdk/bi;

    invoke-virtual {v1}, Lcom/adcolony/sdk/bi;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception caught in customWebChromeClient"

    invoke-static {v1, v2, v0}, Lcom/adcolony/sdk/cb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 709
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/adcolony/sdk/bi$a;->a:Lcom/adcolony/sdk/bi;

    iget-object v0, v0, Lcom/adcolony/sdk/bi;->F:Lcom/adcolony/sdk/bi$f;

    sget-object v1, Lcom/adcolony/sdk/bi$f;->b:Lcom/adcolony/sdk/bi$f;

    if-ne v0, v1, :cond_5

    .line 710
    iget-object v0, p0, Lcom/adcolony/sdk/bi$a;->a:Lcom/adcolony/sdk/bi;

    sget-object v1, Lcom/adcolony/sdk/bi$f;->c:Lcom/adcolony/sdk/bi$f;

    iput-object v1, v0, Lcom/adcolony/sdk/bi;->F:Lcom/adcolony/sdk/bi$f;

    .line 714
    :cond_4
    :goto_2
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/bi$a;->a(Landroid/webkit/WebView;)V

    goto :goto_1

    .line 711
    :cond_5
    iget-object v0, p0, Lcom/adcolony/sdk/bi$a;->a:Lcom/adcolony/sdk/bi;

    iget-object v0, v0, Lcom/adcolony/sdk/bi;->F:Lcom/adcolony/sdk/bi$f;

    sget-object v1, Lcom/adcolony/sdk/bi$f;->d:Lcom/adcolony/sdk/bi$f;

    if-ne v0, v1, :cond_4

    .line 712
    iget-object v0, p0, Lcom/adcolony/sdk/bi$a;->a:Lcom/adcolony/sdk/bi;

    sget-object v1, Lcom/adcolony/sdk/bi$f;->e:Lcom/adcolony/sdk/bi$f;

    iput-object v1, v0, Lcom/adcolony/sdk/bi;->F:Lcom/adcolony/sdk/bi$f;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
