.class public Lcom/inmobi/commons/uid/UIDMapConfigParams;
.super Ljava/lang/Object;
.source "UIDMapConfigParams.java"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UIDMapConfigParams;->b:Z

    .line 11
    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UIDMapConfigParams;->c:Z

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/commons/uid/UIDMapConfigParams;->d:Z

    .line 13
    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UIDMapConfigParams;->e:Z

    .line 14
    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UIDMapConfigParams;->f:Z

    .line 15
    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UIDMapConfigParams;->g:Z

    .line 16
    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UIDMapConfigParams;->h:Z

    .line 17
    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UIDMapConfigParams;->i:Z

    .line 18
    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UIDMapConfigParams;->j:Z

    return-void
.end method


# virtual methods
.method public getAIDL()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UIDMapConfigParams;->j:Z

    return v0
.end method

.method public getFacebookID()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UIDMapConfigParams;->d:Z

    return v0
.end method

.method public getGPID()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UIDMapConfigParams;->h:Z

    return v0
.end method

.method public getIMID()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UIDMapConfigParams;->i:Z

    return v0
.end method

.method public getLTVID()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UIDMapConfigParams;->g:Z

    return v0
.end method

.method public getLoginID()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UIDMapConfigParams;->b:Z

    return v0
.end method

.method public getMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcom/inmobi/commons/uid/UIDMapConfigParams;->a:Ljava/util/Map;

    return-object v0
.end method

.method public getODIN1()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UIDMapConfigParams;->e:Z

    return v0
.end method

.method public getSessionID()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UIDMapConfigParams;->c:Z

    return v0
.end method

.method public getUM5()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UIDMapConfigParams;->f:Z

    return v0
.end method

.method public setAIDL(Z)V
    .locals 0

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/inmobi/commons/uid/UIDMapConfigParams;->j:Z

    .line 111
    return-void
.end method

.method public setFacebookID(Z)V
    .locals 0

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/inmobi/commons/uid/UIDMapConfigParams;->d:Z

    .line 63
    return-void
.end method

.method public setGPID(Z)V
    .locals 0

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/inmobi/commons/uid/UIDMapConfigParams;->h:Z

    .line 95
    return-void
.end method

.method public setIMID(Z)V
    .locals 0

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/inmobi/commons/uid/UIDMapConfigParams;->i:Z

    .line 103
    return-void
.end method

.method public setLTVID(Z)V
    .locals 0

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/inmobi/commons/uid/UIDMapConfigParams;->g:Z

    .line 87
    return-void
.end method

.method public setLoginID(Z)V
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/inmobi/commons/uid/UIDMapConfigParams;->b:Z

    .line 47
    return-void
.end method

.method public setMap(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 27
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    .line 28
    const-string v1, "LID"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getBooleanFromMap(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UIDMapConfigParams;->b:Z

    .line 29
    const-string v1, "SID"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getBooleanFromMap(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UIDMapConfigParams;->c:Z

    .line 30
    const-string v1, "FBA"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getBooleanFromMap(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UIDMapConfigParams;->d:Z

    .line 31
    const-string v1, "O1"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getBooleanFromMap(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UIDMapConfigParams;->e:Z

    .line 32
    const-string v1, "UM5"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getBooleanFromMap(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UIDMapConfigParams;->f:Z

    .line 33
    const-string v1, "LTVID"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getBooleanFromMap(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UIDMapConfigParams;->g:Z

    .line 34
    const-string v1, "GPID"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getBooleanFromMap(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UIDMapConfigParams;->h:Z

    .line 35
    const-string v1, "IMID"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getBooleanFromMap(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UIDMapConfigParams;->i:Z

    .line 36
    const-string v1, "AIDL"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getBooleanFromMap(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/inmobi/commons/uid/UIDMapConfigParams;->j:Z

    .line 38
    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/inmobi/commons/uid/UIDMapConfigParams;->a:Ljava/util/Map;

    .line 39
    return-void
.end method

.method public setODIN1(Z)V
    .locals 0

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/inmobi/commons/uid/UIDMapConfigParams;->e:Z

    .line 71
    return-void
.end method

.method public setSessionID(Z)V
    .locals 0

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/inmobi/commons/uid/UIDMapConfigParams;->c:Z

    .line 55
    return-void
.end method

.method public setUM5(Z)V
    .locals 0

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/inmobi/commons/uid/UIDMapConfigParams;->f:Z

    .line 79
    return-void
.end method
