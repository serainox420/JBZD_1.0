.class Lcom/adcolony/sdk/bh$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/bh;->a(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lcom/adcolony/sdk/bk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/adcolony/sdk/bk;

.field final synthetic d:Lcom/adcolony/sdk/bh;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/bh;Ljava/util/Map;Ljava/lang/String;Lcom/adcolony/sdk/bk;)V
    .locals 0

    .prologue
    .line 677
    iput-object p1, p0, Lcom/adcolony/sdk/bh$2;->d:Lcom/adcolony/sdk/bh;

    iput-object p2, p0, Lcom/adcolony/sdk/bh$2;->a:Ljava/util/Map;

    iput-object p3, p0, Lcom/adcolony/sdk/bh$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/adcolony/sdk/bh$2;->c:Lcom/adcolony/sdk/bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 680
    sget-object v1, Lcom/adcolony/sdk/bn$a;->a:Lcom/adcolony/sdk/bn$a;

    .line 681
    const-string v0, "Error occured in handleConfig"

    move v0, v2

    .line 683
    :goto_0
    add-int/lit8 v3, v0, 0x1

    if-nez v0, :cond_2

    .line 685
    iget-object v0, p0, Lcom/adcolony/sdk/bh$2;->a:Ljava/util/Map;

    sget-object v4, Lcom/adcolony/sdk/bn;->am:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 686
    iget-object v0, p0, Lcom/adcolony/sdk/bh$2;->a:Ljava/util/Map;

    sget-object v4, Lcom/adcolony/sdk/bn;->am:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 687
    if-eqz v0, :cond_3

    .line 688
    const-string v4, "bannedApp"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "serverMaintenance"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 690
    :cond_0
    invoke-static {v0}, Lcom/adcolony/sdk/bn;->a(Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    move-result-object v3

    .line 691
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/adcolony/sdk/bz;->a(Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;)V

    .line 693
    const-string v3, "bannedApp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 694
    sget-object v1, Lcom/adcolony/sdk/bn$a;->i:Lcom/adcolony/sdk/bn$a;

    .line 695
    const-string v3, "Error occured in handleConfig: BANNED APP"

    .line 696
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v3

    const-string v4, "This app is banned."

    sget-object v5, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;->SERVICE_BANNED:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    .line 697
    invoke-virtual {v3, v1, v4, v2, v5}, Lcom/adcolony/sdk/bz;->a(Lcom/adcolony/sdk/bn$a;Ljava/lang/String;ZLcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;)V

    .line 702
    :cond_1
    const-string v2, "serverMaintenance"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 703
    sget-object v1, Lcom/adcolony/sdk/bn$a;->g:Lcom/adcolony/sdk/bn$a;

    .line 704
    const-string v0, "Error occurred in handleConfig: BANNED APP"

    .line 741
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/adcolony/sdk/bh$2;->c:Lcom/adcolony/sdk/bk;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bk;->a(Lcom/adcolony/sdk/bn$a;)V

    .line 742
    return-void

    .line 711
    :cond_3
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->at()Lcom/adcolony/sdk/bm;

    move-result-object v0

    iget-object v4, p0, Lcom/adcolony/sdk/bh$2;->a:Ljava/util/Map;

    invoke-virtual {v0, v4}, Lcom/adcolony/sdk/bm;->a(Ljava/util/Map;)V

    .line 713
    iget-object v0, p0, Lcom/adcolony/sdk/bh$2;->d:Lcom/adcolony/sdk/bh;

    iget-object v4, p0, Lcom/adcolony/sdk/bh$2;->a:Ljava/util/Map;

    invoke-virtual {v0, v4}, Lcom/adcolony/sdk/bh;->b(Ljava/util/Map;)V

    .line 715
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    .line 716
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v4

    .line 717
    invoke-virtual {v4}, Lcom/adcolony/sdk/bz;->at()Lcom/adcolony/sdk/bm;

    move-result-object v4

    .line 718
    invoke-virtual {v4}, Lcom/adcolony/sdk/bm;->j()Ljava/lang/String;

    move-result-object v4

    .line 716
    invoke-virtual {v0, v4}, Lcom/adcolony/sdk/bz;->m(Ljava/lang/String;)V

    .line 720
    iget-object v0, p0, Lcom/adcolony/sdk/bh$2;->a:Ljava/util/Map;

    const-string v4, "old_keys"

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 721
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v4

    iget-object v0, p0, Lcom/adcolony/sdk/bh$2;->a:Ljava/util/Map;

    const-string v5, "old_keys"

    .line 722
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Lcom/adcolony/sdk/bz;->e(Ljava/util/ArrayList;)V

    .line 725
    :cond_4
    iget-object v0, p0, Lcom/adcolony/sdk/bh$2;->d:Lcom/adcolony/sdk/bh;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bh;->b()V

    .line 727
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->at()Lcom/adcolony/sdk/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bm;->w()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 728
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    iget-object v4, p0, Lcom/adcolony/sdk/bh$2;->a:Ljava/util/Map;

    iget-object v5, p0, Lcom/adcolony/sdk/bh$2;->b:Ljava/lang/String;

    const-string v6, "config"

    .line 729
    invoke-virtual {v0, v4, v5, v6}, Lcom/adcolony/sdk/bz;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 730
    sget-object v1, Lcom/adcolony/sdk/bn$a;->n:Lcom/adcolony/sdk/bn$a;

    .line 731
    const-string v0, "Error occurred in handleConfig: MALFORMED RESULTS"

    .line 732
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    const-string v2, "Malformed results detected from invalid JSON response"

    const/4 v3, 0x1

    sget-object v4, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;->SERVICE_UNAVAILABLE:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    .line 733
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adcolony/sdk/bz;->a(Lcom/adcolony/sdk/bn$a;Ljava/lang/String;ZLcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;)V

    goto :goto_1

    :cond_5
    move v0, v3

    goto/16 :goto_0
.end method
