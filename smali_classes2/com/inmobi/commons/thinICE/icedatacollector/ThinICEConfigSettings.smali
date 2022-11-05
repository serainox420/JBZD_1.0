.class public Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;
.super Ljava/lang/Object;
.source "ThinICEConfigSettings.java"


# static fields
.field public static final CELL_OP_FLAG_DISABLE_CURRENT_DETAILS:I = 0x2

.field public static final CELL_OP_FLAG_DISABLE_SIM_DETAILS:I = 0x1

.field public static final WIFI_FLAG_DISABLE_NOMAP_EXCLUSION:I = 0x2

.field public static final WIFI_FLAG_DISABLE_SSID_COLLECTION:I = 0x1


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:J

.field private i:J

.field private j:I

.field private k:I

.field private l:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->a:Z

    .line 18
    iput-boolean v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->b:Z

    .line 19
    iput-boolean v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->c:Z

    .line 20
    iput-boolean v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->d:Z

    .line 21
    iput-boolean v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->e:Z

    .line 22
    iput-boolean v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->f:Z

    .line 23
    iput-boolean v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->g:Z

    .line 24
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->h:J

    .line 25
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->i:J

    .line 26
    const/16 v0, 0x32

    iput v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->j:I

    .line 27
    iput v2, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->k:I

    .line 28
    iput v2, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->l:I

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->a:Z

    .line 18
    iput-boolean v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->b:Z

    .line 19
    iput-boolean v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->c:Z

    .line 20
    iput-boolean v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->d:Z

    .line 21
    iput-boolean v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->e:Z

    .line 22
    iput-boolean v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->f:Z

    .line 23
    iput-boolean v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->g:Z

    .line 24
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->h:J

    .line 25
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->i:J

    .line 26
    const/16 v0, 0x32

    iput v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->j:I

    .line 27
    iput v2, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->k:I

    .line 28
    iput v2, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->l:I

    .line 42
    iget-boolean v0, p1, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->a:Z

    iput-boolean v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->a:Z

    .line 43
    iget-boolean v0, p1, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->b:Z

    iput-boolean v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->b:Z

    .line 44
    iget-boolean v0, p1, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->c:Z

    iput-boolean v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->c:Z

    .line 45
    iget-boolean v0, p1, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->d:Z

    iput-boolean v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->d:Z

    .line 46
    iget-boolean v0, p1, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->e:Z

    iput-boolean v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->e:Z

    .line 47
    iget-boolean v0, p1, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->f:Z

    iput-boolean v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->f:Z

    .line 48
    iget-boolean v0, p1, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->g:Z

    iput-boolean v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->g:Z

    .line 49
    iget-wide v0, p1, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->h:J

    iput-wide v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->h:J

    .line 50
    iget-wide v0, p1, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->i:J

    iput-wide v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->i:J

    .line 51
    iget v0, p1, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->j:I

    iput v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->j:I

    .line 52
    iget v0, p1, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->k:I

    iput v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->k:I

    .line 53
    iget v0, p1, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->l:I

    iput v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->l:I

    .line 54
    return-void
.end method

.method public static bitTest(II)Z
    .locals 1

    .prologue
    .line 351
    and-int v0, p0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCellOpFlags()I
    .locals 1

    .prologue
    .line 323
    iget v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->l:I

    return v0
.end method

.method public getSampleHistorySize()I
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->j:I

    return v0
.end method

.method public getSampleInterval()J
    .locals 2

    .prologue
    .line 196
    iget-wide v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->h:J

    return-wide v0
.end method

.method public getStopRequestTimeout()J
    .locals 2

    .prologue
    .line 220
    iget-wide v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->i:J

    return-wide v0
.end method

.method public getWifiFlags()I
    .locals 1

    .prologue
    .line 286
    iget v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->k:I

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->a:Z

    return v0
.end method

.method public isSampleCellEnabled()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->c:Z

    return v0
.end method

.method public isSampleCellOperatorEnabled()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->b:Z

    return v0
.end method

.method public isSampleConnectedWifiEnabled()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->d:Z

    return v0
.end method

.method public isSampleLocationEnabled()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->e:Z

    return v0
.end method

.method public isSampleVisibleCellTowerEnabled()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->g:Z

    return v0
.end method

.method public isSampleVisibleWifiEnabled()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->f:Z

    return v0
.end method

.method public setCellOpFlags(I)Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;
    .locals 0

    .prologue
    .line 339
    iput p1, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->l:I

    .line 340
    return-object p0
.end method

.method public setEnabled(Z)Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->a:Z

    .line 72
    return-object p0
.end method

.method public setSampleCellEnabled(Z)Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;
    .locals 0

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->c:Z

    .line 113
    return-object p0
.end method

.method public setSampleCellOperatorEnabled(Z)Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;
    .locals 0

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->b:Z

    .line 93
    return-object p0
.end method

.method public setSampleConnectedWifiEnabled(Z)Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;
    .locals 0

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->d:Z

    .line 135
    return-object p0
.end method

.method public setSampleHistorySize(I)Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;
    .locals 2

    .prologue
    .line 258
    if-gtz p1, :cond_0

    .line 259
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Sample history size must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_0
    iput p1, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->j:I

    .line 262
    return-object p0
.end method

.method public setSampleInterval(J)Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;
    .locals 3

    .prologue
    .line 207
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 208
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Sample interval must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_0
    iput-wide p1, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->h:J

    .line 211
    return-object p0
.end method

.method public setSampleLocationEnabled(Z)Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;
    .locals 0

    .prologue
    .line 154
    iput-boolean p1, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->e:Z

    .line 155
    return-object p0
.end method

.method public setSampleVisibleCellTowerEnabled(Z)Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;
    .locals 0

    .prologue
    .line 187
    iput-boolean p1, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->g:Z

    .line 188
    return-object p0
.end method

.method public setSampleVisibleWifiEnabled(Z)Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;
    .locals 0

    .prologue
    .line 181
    iput-boolean p1, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->f:Z

    .line 182
    return-object p0
.end method

.method public setStopRequestTimeout(J)Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;
    .locals 3

    .prologue
    .line 234
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 235
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Stop request timeout must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_0
    iput-wide p1, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->i:J

    .line 238
    return-object p0
.end method

.method public setWifiFlags(I)Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;
    .locals 0

    .prologue
    .line 302
    iput p1, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->k:I

    .line 303
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 357
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    const-string v1, "mEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    const-string v1, "mSampleCellOperatorEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    const-string v1, "mSampleCellEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    const-string v1, "mSampleConnectedWifiEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    const-string v1, "mSampleLocationEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    const-string v1, "mSampleVisibleWifiEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->f:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    const-string v1, "mSampleVisibleCellTowerEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->g:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    const-string v1, "mSampleInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    const-string v1, "mStopRequestTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->i:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    const-string v1, "mWifiFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->k:I

    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    const-string v1, "mCellOpFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->l:I

    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
