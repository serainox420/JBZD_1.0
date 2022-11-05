.class final Lcom/adcolony/sdk/cq$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/cq;->o(Lcom/adcolony/sdk/cr;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/cr;

.field final synthetic b:I

.field final synthetic c:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/cr;ILjava/util/Map;)V
    .locals 0

    .prologue
    .line 345
    iput-object p1, p0, Lcom/adcolony/sdk/cq$17;->a:Lcom/adcolony/sdk/cr;

    iput p2, p0, Lcom/adcolony/sdk/cq$17;->b:I

    iput-object p3, p0, Lcom/adcolony/sdk/cq$17;->c:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 348
    iget-object v0, p0, Lcom/adcolony/sdk/cq$17;->a:Lcom/adcolony/sdk/cr;

    invoke-interface {v0}, Lcom/adcolony/sdk/cr;->a()Landroid/webkit/WebView;

    move-result-object v0

    iget v1, p0, Lcom/adcolony/sdk/cq$17;->b:I

    iget-object v2, p0, Lcom/adcolony/sdk/cq$17;->c:Ljava/util/Map;

    invoke-static {v2}, Lcom/adcolony/sdk/co;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cq;->a(Landroid/webkit/WebView;ILjava/lang/String;)V

    .line 349
    return-void
.end method
