.class Lcom/adcolony/sdk/bi$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/cr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adcolony/sdk/bi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation


# static fields
.field private static final d:I = 0x1f4


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/bi;

.field private b:Landroid/webkit/WebView;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/adcolony/sdk/bi;Landroid/webkit/WebView;)V
    .locals 1

    .prologue
    .line 627
    iput-object p1, p0, Lcom/adcolony/sdk/bi$g;->a:Lcom/adcolony/sdk/bi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 623
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adcolony/sdk/bi$g;->b:Landroid/webkit/WebView;

    .line 624
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adcolony/sdk/bi$g;->c:Z

    .line 628
    iput-object p2, p0, Lcom/adcolony/sdk/bi$g;->b:Landroid/webkit/WebView;

    .line 629
    return-void
.end method

.method static synthetic a(Lcom/adcolony/sdk/bi$g;)Z
    .locals 1

    .prologue
    .line 622
    iget-boolean v0, p0, Lcom/adcolony/sdk/bi$g;->c:Z

    return v0
.end method

.method static synthetic a(Lcom/adcolony/sdk/bi$g;Z)Z
    .locals 0

    .prologue
    .line 622
    iput-boolean p1, p0, Lcom/adcolony/sdk/bi$g;->c:Z

    return p1
.end method


# virtual methods
.method public a()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/adcolony/sdk/bi$g;->b:Landroid/webkit/WebView;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 688
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RtlHardcoded"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 639
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->ap()Lcom/adcolony/sdk/by;

    move-result-object v0

    new-instance v1, Lcom/adcolony/sdk/bi$g$1;

    invoke-direct {v1, p0, p1}, Lcom/adcolony/sdk/bi$g$1;-><init>(Lcom/adcolony/sdk/bi$g;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/by;->a(Lcom/adcolony/sdk/bv;)V

    .line 674
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 678
    iget-object v0, p0, Lcom/adcolony/sdk/bi$g;->a:Lcom/adcolony/sdk/bi;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bi;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, " OverlayActivityImpl::handleClose"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 679
    invoke-static {}, Lcom/adcolony/sdk/cp;->b()Lcom/adcolony/sdk/cp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/cp;->d()V

    .line 680
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 684
    return-void
.end method
