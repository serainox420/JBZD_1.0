.class public Lcom/smaato/soma/internal/requests/settings/UserSettings;
.super Ljava/lang/Object;
.source "UserSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;
    }
.end annotation


# instance fields
.field protected a:Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;

.field protected b:I

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/String;

.field protected g:D

.field protected h:D

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    sget-object v0, Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;->UNSET:Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;

    iput-object v0, p0, Lcom/smaato/soma/internal/requests/settings/UserSettings;->a:Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;

    .line 108
    iput v1, p0, Lcom/smaato/soma/internal/requests/settings/UserSettings;->b:I

    .line 112
    const-string v0, ""

    iput-object v0, p0, Lcom/smaato/soma/internal/requests/settings/UserSettings;->c:Ljava/lang/String;

    .line 116
    const-string v0, ""

    iput-object v0, p0, Lcom/smaato/soma/internal/requests/settings/UserSettings;->d:Ljava/lang/String;

    .line 120
    const-string v0, ""

    iput-object v0, p0, Lcom/smaato/soma/internal/requests/settings/UserSettings;->e:Ljava/lang/String;

    .line 124
    const-string v0, ""

    iput-object v0, p0, Lcom/smaato/soma/internal/requests/settings/UserSettings;->f:Ljava/lang/String;

    .line 128
    iput-wide v2, p0, Lcom/smaato/soma/internal/requests/settings/UserSettings;->g:D

    .line 132
    iput-wide v2, p0, Lcom/smaato/soma/internal/requests/settings/UserSettings;->h:D

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smaato/soma/internal/requests/settings/UserSettings;->i:Z

    .line 141
    iput-boolean v1, p0, Lcom/smaato/soma/internal/requests/settings/UserSettings;->j:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/smaato/soma/internal/requests/settings/UserSettings;->b:I

    return v0
.end method

.method public a(D)V
    .locals 1

    .prologue
    .line 238
    iput-wide p1, p0, Lcom/smaato/soma/internal/requests/settings/UserSettings;->g:D

    .line 239
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 168
    iput p1, p0, Lcom/smaato/soma/internal/requests/settings/UserSettings;->b:I

    .line 169
    return-void
.end method

.method public a(Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/smaato/soma/internal/requests/settings/UserSettings;->a:Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;

    .line 155
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/smaato/soma/internal/requests/settings/UserSettings;->c:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 266
    iput-boolean p1, p0, Lcom/smaato/soma/internal/requests/settings/UserSettings;->i:Z

    .line 267
    return-void
.end method

.method public b()D
    .locals 2

    .prologue
    .line 231
    iget-wide v0, p0, Lcom/smaato/soma/internal/requests/settings/UserSettings;->g:D

    return-wide v0
.end method

.method public b(D)V
    .locals 1

    .prologue
    .line 252
    iput-wide p1, p0, Lcom/smaato/soma/internal/requests/settings/UserSettings;->h:D

    .line 253
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/smaato/soma/internal/requests/settings/UserSettings;->d:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public c()D
    .locals 2

    .prologue
    .line 245
    iget-wide v0, p0, Lcom/smaato/soma/internal/requests/settings/UserSettings;->h:D

    return-wide v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/smaato/soma/internal/requests/settings/UserSettings;->e:Ljava/lang/String;

    .line 211
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 285
    iget-boolean v0, p0, Lcom/smaato/soma/internal/requests/settings/UserSettings;->j:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/smaato/soma/internal/requests/settings/UserSettings;->f:Ljava/lang/String;

    .line 225
    return-void
.end method
