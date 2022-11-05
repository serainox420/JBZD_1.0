.class public final enum Lcom/madsdk/AppInfo$DeviceType;
.super Ljava/lang/Enum;
.source "AppInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/madsdk/AppInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/madsdk/AppInfo$DeviceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/madsdk/AppInfo$DeviceType;

.field public static final enum SMARTPHONE:Lcom/madsdk/AppInfo$DeviceType;

.field public static final enum TABLET:Lcom/madsdk/AppInfo$DeviceType;


# instance fields
.field private identifier:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 153
    new-instance v0, Lcom/madsdk/AppInfo$DeviceType;

    const-string v1, "TABLET"

    const-string v2, "tablet"

    invoke-direct {v0, v1, v3, v2}, Lcom/madsdk/AppInfo$DeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/madsdk/AppInfo$DeviceType;->TABLET:Lcom/madsdk/AppInfo$DeviceType;

    .line 154
    new-instance v0, Lcom/madsdk/AppInfo$DeviceType;

    const-string v1, "SMARTPHONE"

    const-string v2, "smartphone"

    invoke-direct {v0, v1, v4, v2}, Lcom/madsdk/AppInfo$DeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/madsdk/AppInfo$DeviceType;->SMARTPHONE:Lcom/madsdk/AppInfo$DeviceType;

    .line 152
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/madsdk/AppInfo$DeviceType;

    sget-object v1, Lcom/madsdk/AppInfo$DeviceType;->TABLET:Lcom/madsdk/AppInfo$DeviceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/madsdk/AppInfo$DeviceType;->SMARTPHONE:Lcom/madsdk/AppInfo$DeviceType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/madsdk/AppInfo$DeviceType;->$VALUES:[Lcom/madsdk/AppInfo$DeviceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 158
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 159
    iput-object p3, p0, Lcom/madsdk/AppInfo$DeviceType;->identifier:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/madsdk/AppInfo$DeviceType;
    .locals 1

    .prologue
    .line 152
    const-class v0, Lcom/madsdk/AppInfo$DeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/madsdk/AppInfo$DeviceType;

    return-object v0
.end method

.method public static values()[Lcom/madsdk/AppInfo$DeviceType;
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lcom/madsdk/AppInfo$DeviceType;->$VALUES:[Lcom/madsdk/AppInfo$DeviceType;

    invoke-virtual {v0}, [Lcom/madsdk/AppInfo$DeviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/madsdk/AppInfo$DeviceType;

    return-object v0
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/madsdk/AppInfo$DeviceType;->identifier:Ljava/lang/String;

    return-object v0
.end method
