.class public final Lcom/inmobi/commons/thinICE/cellular/CellUtil;
.super Ljava/lang/Object;
.source "CellUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/commons/thinICE/cellular/CellUtil$a;
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 89
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v1, v0, v2

    sput-object v0, Lcom/inmobi/commons/thinICE/cellular/CellUtil;->a:[Ljava/lang/String;

    .line 93
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v1, v0, v2

    sput-object v0, Lcom/inmobi/commons/thinICE/cellular/CellUtil;->b:[Ljava/lang/String;

    .line 97
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v1, v0, v2

    sput-object v0, Lcom/inmobi/commons/thinICE/cellular/CellUtil;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    return-void
.end method

.method private static a(Ljava/lang/String;)[I
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 32
    aput v2, v0, v1

    .line 33
    aput v2, v0, v3

    .line 34
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    :cond_0
    :goto_0
    return-object v0

    .line 39
    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x3

    :try_start_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 40
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 41
    const/4 v3, 0x0

    aput v1, v0, v3

    .line 42
    const/4 v1, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 43
    :catch_0
    move-exception v1

    goto :goto_0

    .line 45
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static getCellNetworkInfo(Landroid/content/Context;)Lcom/inmobi/commons/thinICE/cellular/CellOperatorInfo;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 77
    new-instance v1, Lcom/inmobi/commons/thinICE/cellular/CellOperatorInfo;

    invoke-direct {v1}, Lcom/inmobi/commons/thinICE/cellular/CellOperatorInfo;-><init>()V

    .line 78
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 79
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/inmobi/commons/thinICE/cellular/CellUtil;->a(Ljava/lang/String;)[I

    move-result-object v2

    .line 80
    aget v3, v2, v4

    iput v3, v1, Lcom/inmobi/commons/thinICE/cellular/CellOperatorInfo;->currentMcc:I

    .line 81
    aget v2, v2, v5

    iput v2, v1, Lcom/inmobi/commons/thinICE/cellular/CellOperatorInfo;->currentMnc:I

    .line 82
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/thinICE/cellular/CellUtil;->a(Ljava/lang/String;)[I

    move-result-object v0

    .line 83
    aget v2, v0, v4

    iput v2, v1, Lcom/inmobi/commons/thinICE/cellular/CellOperatorInfo;->simMcc:I

    .line 84
    aget v0, v0, v5

    iput v0, v1, Lcom/inmobi/commons/thinICE/cellular/CellOperatorInfo;->simMnc:I

    .line 85
    return-object v1
.end method

.method public static getCurrentCellTower(Landroid/content/Context;)Lcom/inmobi/commons/thinICE/cellular/CellTowerInfo;
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v7, -0x1

    .line 163
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 164
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/commons/thinICE/cellular/CellUtil;->a(Ljava/lang/String;)[I

    move-result-object v2

    .line 165
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    .line 166
    if-eqz v0, :cond_0

    aget v1, v2, v3

    if-ne v1, v7, :cond_1

    .line 167
    :cond_0
    const/4 v0, 0x0

    .line 201
    :goto_0
    return-object v0

    .line 169
    :cond_1
    new-instance v1, Lcom/inmobi/commons/thinICE/cellular/CellTowerInfo;

    invoke-direct {v1}, Lcom/inmobi/commons/thinICE/cellular/CellTowerInfo;-><init>()V

    .line 170
    aget v3, v2, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 171
    const/4 v4, 0x1

    aget v2, v2, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 172
    instance-of v4, v0, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v4, :cond_3

    .line 174
    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    .line 175
    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v4

    .line 176
    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v5

    .line 177
    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v0

    .line 178
    invoke-static {p0}, Lcom/inmobi/commons/thinICE/cellular/CellUtil$a;->a(Landroid/content/Context;)I

    move-result v6

    .line 179
    iput v6, v1, Lcom/inmobi/commons/thinICE/cellular/CellTowerInfo;->signalStrength:I

    .line 181
    if-eq v4, v7, :cond_2

    if-eq v5, v7, :cond_2

    if-eq v0, v7, :cond_2

    .line 182
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 183
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 184
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 185
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "-"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/inmobi/commons/thinICE/cellular/CellTowerInfo;->id:Ljava/lang/String;

    :cond_2
    :goto_1
    move-object v0, v1

    .line 201
    goto :goto_0

    .line 190
    :cond_3
    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .line 191
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v4

    .line 192
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    .line 193
    invoke-static {p0}, Lcom/inmobi/commons/thinICE/cellular/CellUtil$a;->a(Landroid/content/Context;)I

    move-result v5

    .line 194
    iput v5, v1, Lcom/inmobi/commons/thinICE/cellular/CellTowerInfo;->signalStrength:I

    .line 195
    if-eq v4, v7, :cond_2

    if-eq v0, v7, :cond_2

    .line 196
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 198
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "-"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/inmobi/commons/thinICE/cellular/CellTowerInfo;->id:Ljava/lang/String;

    goto :goto_1
.end method

.method public static getVisibleCellTower(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 206
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 208
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v0

    .line 210
    if-eqz v0, :cond_1

    .line 212
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 221
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static getVisibleCellTowerIds(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 226
    invoke-static {p0}, Lcom/inmobi/commons/thinICE/cellular/CellUtil;->getVisibleCellTower(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 227
    if-eqz v2, :cond_0

    .line 229
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-object v0

    .line 235
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 236
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NeighboringCellInfo;

    .line 238
    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 240
    goto :goto_0
.end method

.method public static hasGetCurrentServingCellPermission(Landroid/content/Context;)Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 113
    .line 114
    sget-object v4, Lcom/inmobi/commons/thinICE/cellular/CellUtil;->a:[Ljava/lang/String;

    array-length v5, v4

    move v2, v1

    move v0, v3

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v6, v4, v2

    .line 115
    invoke-virtual {p0, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_0

    move v0, v1

    .line 114
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 120
    :cond_1
    sget-object v5, Lcom/inmobi/commons/thinICE/cellular/CellUtil;->b:[Ljava/lang/String;

    array-length v6, v5

    move v4, v1

    move v2, v3

    :goto_1
    if-ge v4, v6, :cond_3

    aget-object v7, v5, v4

    .line 121
    invoke-virtual {p0, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_2

    move v2, v1

    .line 120
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 126
    :cond_3
    if-nez v0, :cond_4

    if-nez v2, :cond_4

    .line 131
    :goto_2
    return v1

    :cond_4
    move v1, v3

    goto :goto_2
.end method

.method public static hasGetVisibleCellTowerPermission(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 135
    sget-object v2, Lcom/inmobi/commons/thinICE/cellular/CellUtil;->c:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 136
    invoke-virtual {p0, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 140
    :goto_1
    return v0

    .line 135
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method
