.class public Lcom/inmobi/monetization/internal/LtvpRulesObject;
.super Ljava/lang/Object;
.source "LtvpRulesObject.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:J

.field private e:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHardExpiry()J
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/inmobi/monetization/internal/LtvpRulesObject;->e:J

    return-wide v0
.end method

.method public getRuleId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/inmobi/monetization/internal/LtvpRulesObject;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getRules()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/inmobi/monetization/internal/LtvpRulesObject;->c:Ljava/util/HashMap;

    return-object v0
.end method

.method public getSoftExpiry()J
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/inmobi/monetization/internal/LtvpRulesObject;->d:J

    return-wide v0
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/inmobi/monetization/internal/LtvpRulesObject;->b:J

    return-wide v0
.end method

.method public setHardExpiry(J)V
    .locals 1

    .prologue
    .line 45
    iput-wide p1, p0, Lcom/inmobi/monetization/internal/LtvpRulesObject;->e:J

    .line 46
    return-void
.end method

.method public setRuleId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/inmobi/monetization/internal/LtvpRulesObject;->a:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setRules(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    iput-object p1, p0, Lcom/inmobi/monetization/internal/LtvpRulesObject;->c:Ljava/util/HashMap;

    .line 34
    return-void
.end method

.method public setSoftExpiry(J)V
    .locals 1

    .prologue
    .line 39
    iput-wide p1, p0, Lcom/inmobi/monetization/internal/LtvpRulesObject;->d:J

    .line 40
    return-void
.end method

.method public setTimeStamp(J)V
    .locals 1

    .prologue
    .line 27
    iput-wide p1, p0, Lcom/inmobi/monetization/internal/LtvpRulesObject;->b:J

    .line 28
    return-void
.end method
