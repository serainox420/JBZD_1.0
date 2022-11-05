.class public final Lcom/apprupt/sdk/R$attr;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apprupt/sdk/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "attr"
.end annotation


# static fields
.field public static ad_space_id:I

.field public static animation_type:I

.field public static background_color:I

.field public static categories:I

.field public static clean_on_disappear:I

.field public static keywords:I

.field public static limit:I

.field public static load_immediately:I

.field public static placeholder_size:I

.field public static placeholder_view_visible:I

.field public static preview_size:I

.field public static refresh_interval:I

.field public static visibility_tracking:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/high16 v0, 0x7f010000

    sput v0, Lcom/apprupt/sdk/R$attr;->ad_space_id:I

    .line 29
    const v0, 0x7f010001

    sput v0, Lcom/apprupt/sdk/R$attr;->animation_type:I

    .line 37
    const v0, 0x7f01000b

    sput v0, Lcom/apprupt/sdk/R$attr;->background_color:I

    .line 45
    const v0, 0x7f010002

    sput v0, Lcom/apprupt/sdk/R$attr;->categories:I

    .line 53
    const v0, 0x7f010003

    sput v0, Lcom/apprupt/sdk/R$attr;->clean_on_disappear:I

    .line 61
    const v0, 0x7f010004

    sput v0, Lcom/apprupt/sdk/R$attr;->keywords:I

    .line 70
    const v0, 0x7f01000c

    sput v0, Lcom/apprupt/sdk/R$attr;->limit:I

    .line 78
    const v0, 0x7f010005

    sput v0, Lcom/apprupt/sdk/R$attr;->load_immediately:I

    .line 86
    const v0, 0x7f010006

    sput v0, Lcom/apprupt/sdk/R$attr;->placeholder_size:I

    .line 94
    const v0, 0x7f010007

    sput v0, Lcom/apprupt/sdk/R$attr;->placeholder_view_visible:I

    .line 102
    const v0, 0x7f010008

    sput v0, Lcom/apprupt/sdk/R$attr;->preview_size:I

    .line 110
    const v0, 0x7f010009

    sput v0, Lcom/apprupt/sdk/R$attr;->refresh_interval:I

    .line 118
    const v0, 0x7f01000a

    sput v0, Lcom/apprupt/sdk/R$attr;->visibility_tracking:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
