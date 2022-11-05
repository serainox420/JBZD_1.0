.class public final enum Lcom/apprupt/sdk/CvAnimationType;
.super Ljava/lang/Enum;
.source "CvAnimationType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/apprupt/sdk/CvAnimationType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BOTTOM_TOP:Lcom/apprupt/sdk/CvAnimationType;

.field public static final enum DEFAULT:Lcom/apprupt/sdk/CvAnimationType;

.field public static final enum FADE:Lcom/apprupt/sdk/CvAnimationType;

.field public static final enum LEFT_RIGHT:Lcom/apprupt/sdk/CvAnimationType;

.field public static final enum NONE:Lcom/apprupt/sdk/CvAnimationType;

.field public static final enum RIGHT_LEFT:Lcom/apprupt/sdk/CvAnimationType;

.field public static final enum TOP_BOTTOM:Lcom/apprupt/sdk/CvAnimationType;

.field private static final synthetic a:[Lcom/apprupt/sdk/CvAnimationType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 16
    new-instance v0, Lcom/apprupt/sdk/CvAnimationType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/apprupt/sdk/CvAnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apprupt/sdk/CvAnimationType;->NONE:Lcom/apprupt/sdk/CvAnimationType;

    new-instance v0, Lcom/apprupt/sdk/CvAnimationType;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v4}, Lcom/apprupt/sdk/CvAnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apprupt/sdk/CvAnimationType;->DEFAULT:Lcom/apprupt/sdk/CvAnimationType;

    new-instance v0, Lcom/apprupt/sdk/CvAnimationType;

    const-string v1, "FADE"

    invoke-direct {v0, v1, v5}, Lcom/apprupt/sdk/CvAnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apprupt/sdk/CvAnimationType;->FADE:Lcom/apprupt/sdk/CvAnimationType;

    new-instance v0, Lcom/apprupt/sdk/CvAnimationType;

    const-string v1, "LEFT_RIGHT"

    invoke-direct {v0, v1, v6}, Lcom/apprupt/sdk/CvAnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apprupt/sdk/CvAnimationType;->LEFT_RIGHT:Lcom/apprupt/sdk/CvAnimationType;

    new-instance v0, Lcom/apprupt/sdk/CvAnimationType;

    const-string v1, "RIGHT_LEFT"

    invoke-direct {v0, v1, v7}, Lcom/apprupt/sdk/CvAnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apprupt/sdk/CvAnimationType;->RIGHT_LEFT:Lcom/apprupt/sdk/CvAnimationType;

    new-instance v0, Lcom/apprupt/sdk/CvAnimationType;

    const-string v1, "TOP_BOTTOM"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/apprupt/sdk/CvAnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apprupt/sdk/CvAnimationType;->TOP_BOTTOM:Lcom/apprupt/sdk/CvAnimationType;

    new-instance v0, Lcom/apprupt/sdk/CvAnimationType;

    const-string v1, "BOTTOM_TOP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/apprupt/sdk/CvAnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apprupt/sdk/CvAnimationType;->BOTTOM_TOP:Lcom/apprupt/sdk/CvAnimationType;

    .line 15
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/apprupt/sdk/CvAnimationType;

    sget-object v1, Lcom/apprupt/sdk/CvAnimationType;->NONE:Lcom/apprupt/sdk/CvAnimationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/apprupt/sdk/CvAnimationType;->DEFAULT:Lcom/apprupt/sdk/CvAnimationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/apprupt/sdk/CvAnimationType;->FADE:Lcom/apprupt/sdk/CvAnimationType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/apprupt/sdk/CvAnimationType;->LEFT_RIGHT:Lcom/apprupt/sdk/CvAnimationType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/apprupt/sdk/CvAnimationType;->RIGHT_LEFT:Lcom/apprupt/sdk/CvAnimationType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/apprupt/sdk/CvAnimationType;->TOP_BOTTOM:Lcom/apprupt/sdk/CvAnimationType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/apprupt/sdk/CvAnimationType;->BOTTOM_TOP:Lcom/apprupt/sdk/CvAnimationType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/apprupt/sdk/CvAnimationType;->a:[Lcom/apprupt/sdk/CvAnimationType;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Z)Landroid/view/animation/Animation;
    .locals 10

    .prologue
    const v0, 0x3f666666    # 0.9f

    const/4 v1, 0x2

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 20
    sget-object v5, Lcom/apprupt/sdk/CvAnimationType;->DEFAULT:Lcom/apprupt/sdk/CvAnimationType;

    if-ne p0, v5, :cond_0

    .line 21
    sget-object v0, Lcom/apprupt/sdk/CvAnimationType;->FADE:Lcom/apprupt/sdk/CvAnimationType;

    invoke-direct {v0, p1}, Lcom/apprupt/sdk/CvAnimationType;->a(Z)Landroid/view/animation/Animation;

    move-result-object v0

    .line 92
    :goto_0
    return-object v0

    .line 24
    :cond_0
    sget-object v5, Lcom/apprupt/sdk/CvAnimationType$1;->a:[I

    invoke-virtual {p0}, Lcom/apprupt/sdk/CvAnimationType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 51
    if-eqz p1, :cond_5

    .line 52
    sget-object v0, Lcom/apprupt/sdk/CvAnimationType$1;->a:[I

    invoke-virtual {p0}, Lcom/apprupt/sdk/CvAnimationType;->ordinal()I

    move-result v5

    aget v0, v0, v5

    packed-switch v0, :pswitch_data_1

    move v3, v2

    move v4, v2

    :goto_1
    move v8, v3

    move v6, v2

    .line 82
    :goto_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move v3, v1

    move v5, v1

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 88
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 91
    :goto_3
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 29
    :pswitch_0
    if-eqz p1, :cond_3

    .line 31
    sget-object v1, Lcom/apprupt/sdk/CvAnimationType;->NONE:Lcom/apprupt/sdk/CvAnimationType;

    if-ne p0, v1, :cond_2

    .line 39
    :goto_4
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v3, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 41
    const-wide/16 v0, 0x320

    .line 42
    sget-object v3, Lcom/apprupt/sdk/CvAnimationType;->NONE:Lcom/apprupt/sdk/CvAnimationType;

    if-ne p0, v3, :cond_4

    .line 43
    const-wide/16 v0, 0xa

    .line 47
    :cond_1
    :goto_5
    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    move-object v0, v2

    .line 48
    goto :goto_3

    :cond_2
    move v0, v2

    .line 34
    goto :goto_4

    .line 36
    :cond_3
    sget-object v1, Lcom/apprupt/sdk/CvAnimationType;->NONE:Lcom/apprupt/sdk/CvAnimationType;

    if-ne p0, v1, :cond_6

    move v9, v3

    move v3, v0

    move v0, v9

    .line 37
    goto :goto_4

    .line 44
    :cond_4
    if-eqz p1, :cond_1

    .line 45
    const-wide/16 v0, 0x1f4

    goto :goto_5

    :pswitch_1
    move v4, v3

    move v3, v2

    .line 55
    goto :goto_1

    :pswitch_2
    move v3, v2

    .line 58
    goto :goto_1

    :pswitch_3
    move v4, v2

    .line 61
    goto :goto_1

    :pswitch_4
    move v3, v4

    move v4, v2

    .line 63
    goto :goto_1

    .line 67
    :cond_5
    sget-object v0, Lcom/apprupt/sdk/CvAnimationType$1;->a:[I

    invoke-virtual {p0}, Lcom/apprupt/sdk/CvAnimationType;->ordinal()I

    move-result v5

    aget v0, v0, v5

    packed-switch v0, :pswitch_data_2

    move v8, v2

    move v6, v2

    move v4, v2

    goto :goto_2

    :pswitch_5
    move v8, v2

    move v6, v2

    move v9, v2

    move v2, v4

    move v4, v9

    .line 70
    goto :goto_2

    :pswitch_6
    move v8, v2

    move v6, v2

    move v4, v2

    move v2, v3

    .line 73
    goto :goto_2

    :pswitch_7
    move v8, v2

    move v6, v4

    move v4, v2

    .line 76
    goto :goto_2

    :pswitch_8
    move v8, v2

    move v6, v3

    move v4, v2

    .line 78
    goto :goto_2

    :cond_6
    move v0, v3

    move v3, v2

    goto :goto_4

    .line 24
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 52
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 67
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/apprupt/sdk/CvAnimationType;
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/apprupt/sdk/CvAnimationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/apprupt/sdk/CvAnimationType;

    return-object v0
.end method

.method public static values()[Lcom/apprupt/sdk/CvAnimationType;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/apprupt/sdk/CvAnimationType;->a:[Lcom/apprupt/sdk/CvAnimationType;

    invoke-virtual {v0}, [Lcom/apprupt/sdk/CvAnimationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apprupt/sdk/CvAnimationType;

    return-object v0
.end method


# virtual methods
.method a()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/apprupt/sdk/CvAnimationType;->a(Z)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method b()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/apprupt/sdk/CvAnimationType;->a(Z)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method
