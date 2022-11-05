.class public Lcom/adcolony/sdk/AdColonyZone;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BANNER:I = 0x1

.field public static final INTERSTITIAL:I = 0x0

.field public static final NATIVE:I = 0x2

.field static final a:I = 0x0

.field static final b:I = 0x1

.field static final c:I = 0x2

.field static final d:I = 0x3

.field static final e:I = 0x4

.field static final f:I = 0x5

.field static final g:I = 0x6


# instance fields
.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:I

.field m:I

.field n:I

.field o:I

.field p:I

.field q:Z

.field r:Z


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x5

    iput v0, p0, Lcom/adcolony/sdk/AdColonyZone;->l:I

    .line 48
    iput-object p1, p0, Lcom/adcolony/sdk/AdColonyZone;->h:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method a(I)I
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-boolean v0, v0, Lcom/adcolony/sdk/h;->E:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-boolean v0, v0, Lcom/adcolony/sdk/h;->F:Z

    if-eqz v0, :cond_1

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/adcolony/sdk/AdColonyZone;->b()V

    .line 56
    const/4 p1, 0x0

    .line 60
    :cond_1
    return p1
.end method

.method a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/adcolony/sdk/AdColonyZone;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-boolean v0, v0, Lcom/adcolony/sdk/h;->E:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-boolean v0, v0, Lcom/adcolony/sdk/h;->F:Z

    if-eqz v0, :cond_1

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/adcolony/sdk/AdColonyZone;->b()V

    move-object p1, p2

    .line 91
    :cond_1
    return-object p1
.end method

.method a()Z
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/adcolony/sdk/AdColonyZone;->l:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Z)Z
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-boolean v0, v0, Lcom/adcolony/sdk/h;->E:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-boolean v0, v0, Lcom/adcolony/sdk/h;->F:Z

    if-eqz v0, :cond_1

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/adcolony/sdk/AdColonyZone;->b()V

    .line 69
    const/4 p1, 0x0

    .line 73
    :cond_1
    return p1
.end method

.method b()V
    .locals 2

    .prologue
    .line 196
    sget-object v0, Lcom/adcolony/sdk/u;->g:Lcom/adcolony/sdk/u;

    const-string v1, "The AdColonyZone API is not available while AdColony is disabled."

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 197
    return-void
.end method

.method public getRemainingViewsUntilReward()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/adcolony/sdk/AdColonyZone;->n:I

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/AdColonyZone;->a(I)I

    move-result v0

    return v0
.end method

.method public getRewardAmount()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/adcolony/sdk/AdColonyZone;->p:I

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/AdColonyZone;->a(I)I

    move-result v0

    return v0
.end method

.method public getRewardName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyZone;->i:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/AdColonyZone;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getViewsPerReward()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/adcolony/sdk/AdColonyZone;->o:I

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/AdColonyZone;->a(I)I

    move-result v0

    return v0
.end method

.method public getZoneID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyZone;->h:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/AdColonyZone;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getZoneType()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/adcolony/sdk/AdColonyZone;->m:I

    return v0
.end method

.method public isRewarded()Z
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/adcolony/sdk/AdColonyZone;->r:Z

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/adcolony/sdk/AdColonyZone;->q:Z

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/AdColonyZone;->a(Z)Z

    move-result v0

    return v0
.end method
