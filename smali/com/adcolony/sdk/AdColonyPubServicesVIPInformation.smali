.class public Lcom/adcolony/sdk/AdColonyPubServicesVIPInformation;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String; = "rank_name"

.field private static final c:Ljava/lang/String; = "rank_level"

.field private static final d:Ljava/lang/String; = "next_rank_name"

.field private static final e:Ljava/lang/String; = "next_rank_level"

.field private static final f:Ljava/lang/String; = "rank_percent_progress_micro"

.field private static final g:Ljava/lang/String; = "bonus_per_currency_unit_micro"

.field private static final h:Ljava/lang/String; = "bonus_per_product_unit_micro"

.field private static final i:Ljava/lang/String; = "next_bonus_per_currency_unit_micro"

.field private static final j:Ljava/lang/String; = "total_achievement_count"

.field private static final k:Ljava/lang/String; = "pending_achievement_redemption_count"

.field private static final l:Ljava/lang/String; = "pending_vip_redemption_count"

.field private static final m:Ljava/lang/String; = "next_bonus_per_product_unit_micro"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0
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
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/adcolony/sdk/AdColonyPubServicesVIPInformation;->a:Ljava/util/Map;

    .line 54
    return-void
.end method


# virtual methods
.method public bonusPerCurrencyLocaleUnit()F
    .locals 3

    .prologue
    .line 141
    const/4 v0, 0x0

    .line 142
    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyPubServicesVIPInformation;->a:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyPubServicesVIPInformation;->a:Ljava/util/Map;

    const-string v2, "bonus_per_currency_unit_micro"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyPubServicesVIPInformation;->a:Ljava/util/Map;

    const-string v2, "bonus_per_currency_unit_micro"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 143
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyPubServicesVIPInformation;->a:Ljava/util/Map;

    const-string v1, "bonus_per_currency_unit_micro"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/adcolony/sdk/co;->a(Ljava/lang/Object;)D

    move-result-wide v0

    double-to-float v0, v0

    .line 145
    :cond_0
    return v0
.end method

.method public bonusPerProductUnit()F
    .locals 3

    .prologue
    .line 171
    const/4 v0, 0x0

    .line 172
    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyPubServicesVIPInformation;->a:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyPubServicesVIPInformation;->a:Ljava/util/Map;

    const-string v2, "bonus_per_product_unit_micro"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyPubServicesVIPInformation;->a:Ljava/util/Map;

    const-string v2, "bonus_per_product_unit_micro"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 173
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyPubServicesVIPInformation;->a:Ljava/util/Map;

    const-string v1, "bonus_per_product_unit_micro"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/adcolony/sdk/co;->a(Ljava/lang/Object;)D

    move-result-wide v0

    double-to-float v0, v0

    .line 175
    :cond_0
    return v0
.end method

.method public getData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyPubServicesVIPInformation;->a:Ljava/util/Map;

    return-object v0
.end method

.method public getPendingAchievementRedemptionCount()I
    .locals 3

    .prologue
    .line 215
    const/4 v0, 0x0

    .line 216
    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyPubServicesVIPInformation;->a:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyPubServicesVIPInformation;->a:Ljava/util/Map;

    const-string v2, "pending_achievement_redemption_count"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyPubServicesVIPInformation;->a:Ljava/util/Map;

    const-string v2, "pending_achievement_redemption_count"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 217
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyPubServicesVIPInformation;->a:Ljava/util/Map;

    const-string v1, "pending_achievement_redemption_count"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 219
    :cond_0
    return v0
.end method

.method public getTotalAchievementCount()I
    .locals 3

    .prologue
    .line 227
    const/4 v0, 0x0

    .line 228
    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyPubServicesVIPInformation;->a:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyPubServicesVIPInformation;->a:Ljava/util/Map;

    const-string v2, "total_achievement_count"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyPubServicesVIPInformation;->a:Ljava/util/Map;

    const-string v2, "total_achievement_count"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 229
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyPubServicesVIPInformation;->a:Ljava/util/Map;

    const-string v1, "total_achievement_count"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 231
    :cond_0
    return v0
.end method

.method public nextBonusPerCurrencyLocaleUnit()F
    .locals 3

    .prologue
    .line 187
    const/4 v0, 0x0

    .line 188
    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyPubServicesVIPInformation;->a:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyPubServicesVIPInformation;->a:Ljava/util/Map;

    const-string v2, "next_bonus_per_currency_unit_micro"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyPubServicesVIPInformation;->a:Ljava/util/Map;

    const-string v2, "next_bonus_per_currency_unit_micro"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 189
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyPubServicesVIPInformation;->a:Ljava/util/Map;

    const-string v1, "next_bonus_per_currency_unit_micro"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/adcolony/sdk/co;->a(Ljava/lang/Object;)D

    move-result-wide v0

    double-to-float v0, v0

    .line 191
    :cond_0
    return v0
.end method

.method public nextBonusPerProductUnit()F
    .locals 3

    .prologue
    .line 202
    const/4 v0, 0x0

    .line 203
    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyPubServicesVIPInformation;->a:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyPubServicesVIPInformation;->a:Ljava/util/Map;

    const-string v2, "next_bonus_per_product_unit_micro"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyPubServicesVIPInformation;->a:Ljava/util/Map;

    const-string v2, "next_bonus_per_product_unit_micro"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 204
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyPubServicesVIPInformation;->a:Ljava/util/Map;

    const-string v1, "next_bonus_per_product_unit_micro"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/adcolony/sdk/co;->a(Ljava/lang/Object;)D

    move-result-wide v0

    double-to-float v0, v0

    .line 206
    :cond_0
    return v0
.end method

.method public nextRankLevel()I
    .locals 3

    .prologue
    .line 97
    const/4 v0, 0x0

    .line 98
    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyPubServicesVIPInformation;->a:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyPubServicesVIPInformation;->a:Ljava/util/Map;

    const-string v2, "next_rank_level"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyPubServicesVIPInformation;->a:Ljava/util/Map;

    const-string v2, "next_rank_level"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyPubServicesVIPInformation;->a:Ljava/util/Map;

    const-string v1, "next_rank_level"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 101
    :cond_0
    return v0
.end method

.method public nextRankName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 85
    const-string v0, ""

    .line 86
    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyPubServicesVIPInformation;->a:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyPubServicesVIPInformation;->a:Ljava/util/Map;

    const-string v2, "next_rank_name"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyPubServicesVIPInformation;->a:Ljava/util/Map;

    const-string v2, "next_rank_name"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyPubServicesVIPInformation;->a:Ljava/util/Map;

    const-string v1, "next_rank_name"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 89
    :cond_0
    return-object v0
.end method

.method public rankLevel()I
    .locals 3

    .prologue
    .line 73
    const/4 v0, 0x0

    .line 74
    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyPubServicesVIPInformation;->a:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyPubServicesVIPInformation;->a:Ljava/util/Map;

    const-string v2, "rank_level"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyPubServicesVIPInformation;->a:Ljava/util/Map;

    const-string v2, "rank_level"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyPubServicesVIPInformation;->a:Ljava/util/Map;

    const-string v1, "rank_level"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 77
    :cond_0
    return v0
.end method

.method public rankName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 61
    const-string v0, ""

    .line 62
    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyPubServicesVIPInformation;->a:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyPubServicesVIPInformation;->a:Ljava/util/Map;

    const-string v2, "rank_name"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyPubServicesVIPInformation;->a:Ljava/util/Map;

    const-string v2, "rank_name"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyPubServicesVIPInformation;->a:Ljava/util/Map;

    const-string v1, "rank_name"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 65
    :cond_0
    return-object v0
.end method

.method public rankPercentProgress()F
    .locals 3

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 111
    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyPubServicesVIPInformation;->a:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyPubServicesVIPInformation;->a:Ljava/util/Map;

    const-string v2, "rank_percent_progress_micro"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyPubServicesVIPInformation;->a:Ljava/util/Map;

    const-string v2, "rank_percent_progress_micro"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 112
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyPubServicesVIPInformation;->a:Ljava/util/Map;

    const-string v1, "rank_percent_progress_micro"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/adcolony/sdk/co;->a(Ljava/lang/Object;)D

    move-result-wide v0

    double-to-float v0, v0

    .line 114
    :cond_0
    return v0
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyPubServicesVIPInformation;->a:Ljava/util/Map;

    invoke-static {v0}, Lcom/adcolony/sdk/co;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
