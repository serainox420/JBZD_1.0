.class final Lcom/adcolony/sdk/cq$26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/cq;->b(Lcom/adcolony/sdk/cr;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/adcolony/sdk/cr;

.field final synthetic c:I


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/adcolony/sdk/cr;I)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/adcolony/sdk/cq$26;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/adcolony/sdk/cq$26;->b:Lcom/adcolony/sdk/cr;

    iput p3, p0, Lcom/adcolony/sdk/cq$26;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/adcolony/sdk/cq$26;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/adcolony/sdk/co;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 97
    if-eqz v1, :cond_0

    .line 98
    const-string v0, "event"

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "data"

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const-string v0, "event"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 100
    const-string v2, "data"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 101
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 102
    iget-object v0, p0, Lcom/adcolony/sdk/cq$26;->b:Lcom/adcolony/sdk/cr;

    invoke-interface {v0}, Lcom/adcolony/sdk/cr;->a()Landroid/webkit/WebView;

    move-result-object v0

    iget v1, p0, Lcom/adcolony/sdk/cq$26;->c:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cq;->a(Landroid/webkit/WebView;ILjava/lang/String;)V

    .line 105
    :cond_0
    return-void
.end method
