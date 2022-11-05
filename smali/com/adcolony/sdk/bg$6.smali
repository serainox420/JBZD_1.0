.class Lcom/adcolony/sdk/bg$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/bg;->a(Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

.field final synthetic b:Lcom/adcolony/sdk/bg;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/bg;Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;)V
    .locals 0

    .prologue
    .line 722
    iput-object p1, p0, Lcom/adcolony/sdk/bg$6;->b:Lcom/adcolony/sdk/bg;

    iput-object p2, p0, Lcom/adcolony/sdk/bg$6;->a:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 725
    iget-object v0, p0, Lcom/adcolony/sdk/bg$6;->b:Lcom/adcolony/sdk/bg;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bg;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setServiceAvailability (availability: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adcolony/sdk/bg$6;->b:Lcom/adcolony/sdk/bg;

    iget-object v2, v2, Lcom/adcolony/sdk/bg;->ai:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adcolony/sdk/bg$6;->a:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 726
    iget-object v0, p0, Lcom/adcolony/sdk/bg$6;->b:Lcom/adcolony/sdk/bg;

    iget-object v0, v0, Lcom/adcolony/sdk/bg;->ai:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    iget-object v1, p0, Lcom/adcolony/sdk/bg$6;->a:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    if-ne v0, v1, :cond_0

    .line 749
    :goto_0
    return-void

    .line 730
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/bg$6;->b:Lcom/adcolony/sdk/bg;

    iget-object v1, p0, Lcom/adcolony/sdk/bg$6;->a:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    iput-object v1, v0, Lcom/adcolony/sdk/bg;->ai:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    .line 732
    iget-object v0, p0, Lcom/adcolony/sdk/bg$6;->b:Lcom/adcolony/sdk/bg;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bg;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 733
    iget-object v0, p0, Lcom/adcolony/sdk/bg$6;->b:Lcom/adcolony/sdk/bg;

    iget-object v0, v0, Lcom/adcolony/sdk/bg;->q:Lcom/adcolony/sdk/cn;

    invoke-virtual {v0}, Lcom/adcolony/sdk/cn;->b()V

    .line 735
    :cond_1
    iget-object v0, p0, Lcom/adcolony/sdk/bg$6;->b:Lcom/adcolony/sdk/bg;

    iget-object v0, v0, Lcom/adcolony/sdk/bg;->ai:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    sget-object v1, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;->SERVICE_AVAILABLE:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    if-ne v0, v1, :cond_4

    .line 737
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->an()V

    .line 738
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->j()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 739
    iget-object v0, p0, Lcom/adcolony/sdk/bg$6;->b:Lcom/adcolony/sdk/bg;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bg;->aI()Lcom/adcolony/sdk/ch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/ch;->c()V

    .line 741
    iget-object v0, p0, Lcom/adcolony/sdk/bg$6;->b:Lcom/adcolony/sdk/bg;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bg;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "init success trying to execute pending notifications"

    invoke-static {v0, v1, v3}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 742
    :cond_2
    iget-object v0, p0, Lcom/adcolony/sdk/bg$6;->b:Lcom/adcolony/sdk/bg;

    iget-object v0, v0, Lcom/adcolony/sdk/bg;->k:Lcom/adcolony/sdk/ch;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ch;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 746
    :cond_3
    iget-object v0, p0, Lcom/adcolony/sdk/bg$6;->b:Lcom/adcolony/sdk/bg;

    iget-object v0, v0, Lcom/adcolony/sdk/bg;->v:Lcom/adcolony/sdk/YvolverDeepLinkManager;

    invoke-virtual {v0}, Lcom/adcolony/sdk/YvolverDeepLinkManager;->a()V

    .line 748
    :cond_4
    iget-object v0, p0, Lcom/adcolony/sdk/bg$6;->b:Lcom/adcolony/sdk/bg;

    iget-object v0, v0, Lcom/adcolony/sdk/bg;->t:Lcom/adcolony/sdk/bl;

    iget-object v1, p0, Lcom/adcolony/sdk/bg$6;->a:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bl;->a(Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;)V

    goto :goto_0
.end method
