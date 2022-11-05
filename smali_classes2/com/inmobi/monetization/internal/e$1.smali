.class Lcom/inmobi/monetization/internal/e$1;
.super Landroid/webkit/WebViewClient;
.source "TrackerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/monetization/internal/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/monetization/internal/e;


# direct methods
.method constructor <init>(Lcom/inmobi/monetization/internal/e;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/inmobi/monetization/internal/e$1;->a:Lcom/inmobi/monetization/internal/e;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 145
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Native ad context code loaded"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/inmobi/monetization/internal/e$1;->a:Lcom/inmobi/monetization/internal/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/inmobi/monetization/internal/e;->a(Lcom/inmobi/monetization/internal/e;Z)Z

    .line 148
    iget-object v0, p0, Lcom/inmobi/monetization/internal/e$1;->a:Lcom/inmobi/monetization/internal/e;

    invoke-static {v0}, Lcom/inmobi/monetization/internal/e;->a(Lcom/inmobi/monetization/internal/e;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/monetization/internal/e$1;->a:Lcom/inmobi/monetization/internal/e;

    invoke-static {v0}, Lcom/inmobi/monetization/internal/e;->a(Lcom/inmobi/monetization/internal/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 150
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/inmobi/monetization/internal/e$1;->a:Lcom/inmobi/monetization/internal/e;

    invoke-static {v0}, Lcom/inmobi/monetization/internal/e;->a(Lcom/inmobi/monetization/internal/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 152
    iget-object v2, p0, Lcom/inmobi/monetization/internal/e$1;->a:Lcom/inmobi/monetization/internal/e;

    iget-object v0, p0, Lcom/inmobi/monetization/internal/e$1;->a:Lcom/inmobi/monetization/internal/e;

    invoke-static {v0}, Lcom/inmobi/monetization/internal/e;->a(Lcom/inmobi/monetization/internal/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/inmobi/monetization/internal/e;->b(Ljava/lang/String;)V

    .line 150
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/inmobi/monetization/internal/e$1;->a:Lcom/inmobi/monetization/internal/e;

    invoke-static {v0}, Lcom/inmobi/monetization/internal/e;->a(Lcom/inmobi/monetization/internal/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 155
    iget-object v0, p0, Lcom/inmobi/monetization/internal/e$1;->a:Lcom/inmobi/monetization/internal/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inmobi/monetization/internal/e;->a(Lcom/inmobi/monetization/internal/e;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 157
    :cond_1
    return-void
.end method
