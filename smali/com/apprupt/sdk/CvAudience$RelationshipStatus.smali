.class public final enum Lcom/apprupt/sdk/CvAudience$RelationshipStatus;
.super Ljava/lang/Enum;
.source "CvAudience.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apprupt/sdk/CvAudience;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RelationshipStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/apprupt/sdk/CvAudience$RelationshipStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DIVORCED:Lcom/apprupt/sdk/CvAudience$RelationshipStatus;

.field public static final enum ENGAGED:Lcom/apprupt/sdk/CvAudience$RelationshipStatus;

.field public static final enum IN_RELATIONSHIP:Lcom/apprupt/sdk/CvAudience$RelationshipStatus;

.field public static final enum MARRIED:Lcom/apprupt/sdk/CvAudience$RelationshipStatus;

.field public static final enum SEPARATED:Lcom/apprupt/sdk/CvAudience$RelationshipStatus;

.field public static final enum SINGLE:Lcom/apprupt/sdk/CvAudience$RelationshipStatus;

.field public static final enum UNKNOWN:Lcom/apprupt/sdk/CvAudience$RelationshipStatus;

.field public static final enum WIDOWED:Lcom/apprupt/sdk/CvAudience$RelationshipStatus;

.field private static final synthetic a:[Lcom/apprupt/sdk/CvAudience$RelationshipStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    new-instance v0, Lcom/apprupt/sdk/CvAudience$RelationshipStatus;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/apprupt/sdk/CvAudience$RelationshipStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apprupt/sdk/CvAudience$RelationshipStatus;->UNKNOWN:Lcom/apprupt/sdk/CvAudience$RelationshipStatus;

    new-instance v0, Lcom/apprupt/sdk/CvAudience$RelationshipStatus;

    const-string v1, "SINGLE"

    invoke-direct {v0, v1, v4}, Lcom/apprupt/sdk/CvAudience$RelationshipStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apprupt/sdk/CvAudience$RelationshipStatus;->SINGLE:Lcom/apprupt/sdk/CvAudience$RelationshipStatus;

    new-instance v0, Lcom/apprupt/sdk/CvAudience$RelationshipStatus;

    const-string v1, "IN_RELATIONSHIP"

    invoke-direct {v0, v1, v5}, Lcom/apprupt/sdk/CvAudience$RelationshipStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apprupt/sdk/CvAudience$RelationshipStatus;->IN_RELATIONSHIP:Lcom/apprupt/sdk/CvAudience$RelationshipStatus;

    new-instance v0, Lcom/apprupt/sdk/CvAudience$RelationshipStatus;

    const-string v1, "ENGAGED"

    invoke-direct {v0, v1, v6}, Lcom/apprupt/sdk/CvAudience$RelationshipStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apprupt/sdk/CvAudience$RelationshipStatus;->ENGAGED:Lcom/apprupt/sdk/CvAudience$RelationshipStatus;

    new-instance v0, Lcom/apprupt/sdk/CvAudience$RelationshipStatus;

    const-string v1, "MARRIED"

    invoke-direct {v0, v1, v7}, Lcom/apprupt/sdk/CvAudience$RelationshipStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apprupt/sdk/CvAudience$RelationshipStatus;->MARRIED:Lcom/apprupt/sdk/CvAudience$RelationshipStatus;

    new-instance v0, Lcom/apprupt/sdk/CvAudience$RelationshipStatus;

    const-string v1, "SEPARATED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/apprupt/sdk/CvAudience$RelationshipStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apprupt/sdk/CvAudience$RelationshipStatus;->SEPARATED:Lcom/apprupt/sdk/CvAudience$RelationshipStatus;

    new-instance v0, Lcom/apprupt/sdk/CvAudience$RelationshipStatus;

    const-string v1, "DIVORCED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/apprupt/sdk/CvAudience$RelationshipStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apprupt/sdk/CvAudience$RelationshipStatus;->DIVORCED:Lcom/apprupt/sdk/CvAudience$RelationshipStatus;

    new-instance v0, Lcom/apprupt/sdk/CvAudience$RelationshipStatus;

    const-string v1, "WIDOWED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/apprupt/sdk/CvAudience$RelationshipStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apprupt/sdk/CvAudience$RelationshipStatus;->WIDOWED:Lcom/apprupt/sdk/CvAudience$RelationshipStatus;

    .line 43
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/apprupt/sdk/CvAudience$RelationshipStatus;

    sget-object v1, Lcom/apprupt/sdk/CvAudience$RelationshipStatus;->UNKNOWN:Lcom/apprupt/sdk/CvAudience$RelationshipStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/apprupt/sdk/CvAudience$RelationshipStatus;->SINGLE:Lcom/apprupt/sdk/CvAudience$RelationshipStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/apprupt/sdk/CvAudience$RelationshipStatus;->IN_RELATIONSHIP:Lcom/apprupt/sdk/CvAudience$RelationshipStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/apprupt/sdk/CvAudience$RelationshipStatus;->ENGAGED:Lcom/apprupt/sdk/CvAudience$RelationshipStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/apprupt/sdk/CvAudience$RelationshipStatus;->MARRIED:Lcom/apprupt/sdk/CvAudience$RelationshipStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/apprupt/sdk/CvAudience$RelationshipStatus;->SEPARATED:Lcom/apprupt/sdk/CvAudience$RelationshipStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/apprupt/sdk/CvAudience$RelationshipStatus;->DIVORCED:Lcom/apprupt/sdk/CvAudience$RelationshipStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/apprupt/sdk/CvAudience$RelationshipStatus;->WIDOWED:Lcom/apprupt/sdk/CvAudience$RelationshipStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/apprupt/sdk/CvAudience$RelationshipStatus;->a:[Lcom/apprupt/sdk/CvAudience$RelationshipStatus;

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
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/apprupt/sdk/CvAudience$RelationshipStatus;
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/apprupt/sdk/CvAudience$RelationshipStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/apprupt/sdk/CvAudience$RelationshipStatus;

    return-object v0
.end method

.method public static values()[Lcom/apprupt/sdk/CvAudience$RelationshipStatus;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/apprupt/sdk/CvAudience$RelationshipStatus;->a:[Lcom/apprupt/sdk/CvAudience$RelationshipStatus;

    invoke-virtual {v0}, [Lcom/apprupt/sdk/CvAudience$RelationshipStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apprupt/sdk/CvAudience$RelationshipStatus;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    sget-object v0, Lcom/apprupt/sdk/CvAudience$1;->b:[I

    invoke-virtual {p0}, Lcom/apprupt/sdk/CvAudience$RelationshipStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 65
    const-string v0, ""

    :goto_0
    return-object v0

    .line 50
    :pswitch_0
    const-string v0, "single"

    goto :goto_0

    .line 52
    :pswitch_1
    const-string v0, "in-relationship"

    goto :goto_0

    .line 54
    :pswitch_2
    const-string v0, "engaged"

    goto :goto_0

    .line 56
    :pswitch_3
    const-string v0, "married"

    goto :goto_0

    .line 58
    :pswitch_4
    const-string v0, "separated"

    goto :goto_0

    .line 60
    :pswitch_5
    const-string v0, "divorced"

    goto :goto_0

    .line 62
    :pswitch_6
    const-string v0, "widowed"

    goto :goto_0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
