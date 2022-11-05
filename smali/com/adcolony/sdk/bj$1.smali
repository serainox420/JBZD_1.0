.class Lcom/adcolony/sdk/bj$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/bj;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/bj;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/bj;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/adcolony/sdk/bj$1;->a:Lcom/adcolony/sdk/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/adcolony/sdk/bj$1;->a:Lcom/adcolony/sdk/bj;

    iget-object v0, v0, Lcom/adcolony/sdk/bj;->b:Lcom/adcolony/sdk/AdColonyPubServicesOverlayActivity;

    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyPubServicesOverlayActivity;->g()V

    .line 48
    iget-object v0, p0, Lcom/adcolony/sdk/bj$1;->a:Lcom/adcolony/sdk/bj;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bj;->a(Lcom/adcolony/sdk/AdColonyPubServicesOverlayActivity;)V

    .line 49
    return-void
.end method
