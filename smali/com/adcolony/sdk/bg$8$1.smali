.class Lcom/adcolony/sdk/bg$8$1;
.super Lcom/adcolony/sdk/bp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/bg$8;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/bg$8;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/bg$8;Lcom/adcolony/sdk/bq;)V
    .locals 0

    .prologue
    .line 823
    iput-object p1, p0, Lcom/adcolony/sdk/bg$8$1;->a:Lcom/adcolony/sdk/bg$8;

    invoke-direct {p0, p2}, Lcom/adcolony/sdk/bp;-><init>(Lcom/adcolony/sdk/bq;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 825
    iget-object v0, p0, Lcom/adcolony/sdk/bg$8$1;->a:Lcom/adcolony/sdk/bg$8;

    iget-object v0, v0, Lcom/adcolony/sdk/bg$8;->d:Lcom/adcolony/sdk/bg;

    iget-object v0, v0, Lcom/adcolony/sdk/bg;->ai:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    sget-object v1, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;->SERVICE_CONNECTING:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    if-eq v0, v1, :cond_0

    .line 826
    iget-object v0, p0, Lcom/adcolony/sdk/bg$8$1;->a:Lcom/adcolony/sdk/bg$8;

    iget-object v0, v0, Lcom/adcolony/sdk/bg$8;->d:Lcom/adcolony/sdk/bg;

    sget-object v1, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;->SERVICE_CONNECTING:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bg;->a(Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;)V

    .line 830
    iget-object v0, p0, Lcom/adcolony/sdk/bg$8$1;->a:Lcom/adcolony/sdk/bg$8;

    iget-object v0, v0, Lcom/adcolony/sdk/bg$8;->d:Lcom/adcolony/sdk/bg;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adcolony/sdk/bg;->a(Lcom/adcolony/sdk/bg;Z)V

    .line 831
    invoke-virtual {p0}, Lcom/adcolony/sdk/bg$8$1;->b()V

    .line 835
    :goto_0
    return-void

    .line 833
    :cond_0
    invoke-virtual {p0}, Lcom/adcolony/sdk/bg$8$1;->d()V

    goto :goto_0
.end method
