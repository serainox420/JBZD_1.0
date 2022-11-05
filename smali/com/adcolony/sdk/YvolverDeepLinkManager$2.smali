.class Lcom/adcolony/sdk/YvolverDeepLinkManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/YvolverDeepLinkManager;->a(Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;

.field final synthetic b:Lcom/adcolony/sdk/YvolverDeepLinkManager;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/YvolverDeepLinkManager;Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager$2;->b:Lcom/adcolony/sdk/YvolverDeepLinkManager;

    iput-object p2, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager$2;->a:Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager$2;->b:Lcom/adcolony/sdk/YvolverDeepLinkManager;

    invoke-static {v0}, Lcom/adcolony/sdk/YvolverDeepLinkManager;->a(Lcom/adcolony/sdk/YvolverDeepLinkManager;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/YvolverDeepLinkManager$2;->a:Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    return-void
.end method
