.class public final enum Lcom/apprupt/sdk/CvAudience$Gender;
.super Ljava/lang/Enum;
.source "CvAudience.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apprupt/sdk/CvAudience;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Gender"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/apprupt/sdk/CvAudience$Gender;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FEMALE:Lcom/apprupt/sdk/CvAudience$Gender;

.field public static final enum MALE:Lcom/apprupt/sdk/CvAudience$Gender;

.field public static final enum UNKNOWN:Lcom/apprupt/sdk/CvAudience$Gender;

.field private static final synthetic a:[Lcom/apprupt/sdk/CvAudience$Gender;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/apprupt/sdk/CvAudience$Gender;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/apprupt/sdk/CvAudience$Gender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apprupt/sdk/CvAudience$Gender;->UNKNOWN:Lcom/apprupt/sdk/CvAudience$Gender;

    new-instance v0, Lcom/apprupt/sdk/CvAudience$Gender;

    const-string v1, "MALE"

    invoke-direct {v0, v1, v3}, Lcom/apprupt/sdk/CvAudience$Gender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apprupt/sdk/CvAudience$Gender;->MALE:Lcom/apprupt/sdk/CvAudience$Gender;

    new-instance v0, Lcom/apprupt/sdk/CvAudience$Gender;

    const-string v1, "FEMALE"

    invoke-direct {v0, v1, v4}, Lcom/apprupt/sdk/CvAudience$Gender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apprupt/sdk/CvAudience$Gender;->FEMALE:Lcom/apprupt/sdk/CvAudience$Gender;

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/apprupt/sdk/CvAudience$Gender;

    sget-object v1, Lcom/apprupt/sdk/CvAudience$Gender;->UNKNOWN:Lcom/apprupt/sdk/CvAudience$Gender;

    aput-object v1, v0, v2

    sget-object v1, Lcom/apprupt/sdk/CvAudience$Gender;->MALE:Lcom/apprupt/sdk/CvAudience$Gender;

    aput-object v1, v0, v3

    sget-object v1, Lcom/apprupt/sdk/CvAudience$Gender;->FEMALE:Lcom/apprupt/sdk/CvAudience$Gender;

    aput-object v1, v0, v4

    sput-object v0, Lcom/apprupt/sdk/CvAudience$Gender;->a:[Lcom/apprupt/sdk/CvAudience$Gender;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/apprupt/sdk/CvAudience$Gender;
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/apprupt/sdk/CvAudience$Gender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/apprupt/sdk/CvAudience$Gender;

    return-object v0
.end method

.method public static values()[Lcom/apprupt/sdk/CvAudience$Gender;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/apprupt/sdk/CvAudience$Gender;->a:[Lcom/apprupt/sdk/CvAudience$Gender;

    invoke-virtual {v0}, [Lcom/apprupt/sdk/CvAudience$Gender;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apprupt/sdk/CvAudience$Gender;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 31
    sget-object v0, Lcom/apprupt/sdk/CvAudience$1;->a:[I

    invoke-virtual {p0}, Lcom/apprupt/sdk/CvAudience$Gender;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 37
    const-string v0, ""

    :goto_0
    return-object v0

    .line 33
    :pswitch_0
    const-string v0, "M"

    goto :goto_0

    .line 35
    :pswitch_1
    const-string v0, "F"

    goto :goto_0

    .line 31
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
