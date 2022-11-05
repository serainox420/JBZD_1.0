.class public final enum Lpl/jbzd/core/ui/view/EditText$Font;
.super Ljava/lang/Enum;
.source "EditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/jbzd/core/ui/view/EditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Font"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lpl/jbzd/core/ui/view/EditText$Font;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BitterBold:Lpl/jbzd/core/ui/view/EditText$Font;

.field public static final enum BitterRegular:Lpl/jbzd/core/ui/view/EditText$Font;

.field public static final enum RobotoBold:Lpl/jbzd/core/ui/view/EditText$Font;

.field public static final enum RobotoCondensedBold:Lpl/jbzd/core/ui/view/EditText$Font;

.field public static final enum RobotoCondensedRegular:Lpl/jbzd/core/ui/view/EditText$Font;

.field public static final enum RobotoLight:Lpl/jbzd/core/ui/view/EditText$Font;

.field public static final enum RobotoMedium:Lpl/jbzd/core/ui/view/EditText$Font;

.field public static final enum RobotoRegular:Lpl/jbzd/core/ui/view/EditText$Font;

.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lpl/jbzd/core/ui/view/EditText$Font;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic b:[Lpl/jbzd/core/ui/view/EditText$Font;


# instance fields
.field public id:I

.field public src:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 22
    new-instance v1, Lpl/jbzd/core/ui/view/EditText$Font;

    const-string v2, "RobotoCondensedBold"

    const-string v3, "Roboto_Condensed/RobotoCondensed-Bold.ttf"

    invoke-direct {v1, v2, v0, v0, v3}, Lpl/jbzd/core/ui/view/EditText$Font;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lpl/jbzd/core/ui/view/EditText$Font;->RobotoCondensedBold:Lpl/jbzd/core/ui/view/EditText$Font;

    .line 23
    new-instance v1, Lpl/jbzd/core/ui/view/EditText$Font;

    const-string v2, "RobotoCondensedRegular"

    const-string v3, "Roboto_Condensed/RobotoCondensed-Regular.ttf"

    invoke-direct {v1, v2, v6, v6, v3}, Lpl/jbzd/core/ui/view/EditText$Font;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lpl/jbzd/core/ui/view/EditText$Font;->RobotoCondensedRegular:Lpl/jbzd/core/ui/view/EditText$Font;

    .line 24
    new-instance v1, Lpl/jbzd/core/ui/view/EditText$Font;

    const-string v2, "RobotoBold"

    const-string v3, "Roboto/Roboto-Bold.ttf"

    invoke-direct {v1, v2, v7, v7, v3}, Lpl/jbzd/core/ui/view/EditText$Font;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lpl/jbzd/core/ui/view/EditText$Font;->RobotoBold:Lpl/jbzd/core/ui/view/EditText$Font;

    .line 25
    new-instance v1, Lpl/jbzd/core/ui/view/EditText$Font;

    const-string v2, "RobotoLight"

    const-string v3, "Roboto/Roboto-Light.ttf"

    invoke-direct {v1, v2, v8, v8, v3}, Lpl/jbzd/core/ui/view/EditText$Font;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lpl/jbzd/core/ui/view/EditText$Font;->RobotoLight:Lpl/jbzd/core/ui/view/EditText$Font;

    .line 26
    new-instance v1, Lpl/jbzd/core/ui/view/EditText$Font;

    const-string v2, "RobotoMedium"

    const-string v3, "Roboto/Roboto-Medium.ttf"

    invoke-direct {v1, v2, v9, v9, v3}, Lpl/jbzd/core/ui/view/EditText$Font;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lpl/jbzd/core/ui/view/EditText$Font;->RobotoMedium:Lpl/jbzd/core/ui/view/EditText$Font;

    .line 27
    new-instance v1, Lpl/jbzd/core/ui/view/EditText$Font;

    const-string v2, "RobotoRegular"

    const/4 v3, 0x5

    const/4 v4, 0x5

    const-string v5, "Roboto/Roboto-Regular.ttf"

    invoke-direct {v1, v2, v3, v4, v5}, Lpl/jbzd/core/ui/view/EditText$Font;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lpl/jbzd/core/ui/view/EditText$Font;->RobotoRegular:Lpl/jbzd/core/ui/view/EditText$Font;

    .line 28
    new-instance v1, Lpl/jbzd/core/ui/view/EditText$Font;

    const-string v2, "BitterRegular"

    const/4 v3, 0x6

    const/4 v4, 0x6

    const-string v5, "Bitter/Bitter-Regular.ttf"

    invoke-direct {v1, v2, v3, v4, v5}, Lpl/jbzd/core/ui/view/EditText$Font;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lpl/jbzd/core/ui/view/EditText$Font;->BitterRegular:Lpl/jbzd/core/ui/view/EditText$Font;

    .line 29
    new-instance v1, Lpl/jbzd/core/ui/view/EditText$Font;

    const-string v2, "BitterBold"

    const/4 v3, 0x7

    const/4 v4, 0x7

    const-string v5, "Bitter/Bitter-Bold.ttf"

    invoke-direct {v1, v2, v3, v4, v5}, Lpl/jbzd/core/ui/view/EditText$Font;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lpl/jbzd/core/ui/view/EditText$Font;->BitterBold:Lpl/jbzd/core/ui/view/EditText$Font;

    .line 20
    const/16 v1, 0x8

    new-array v1, v1, [Lpl/jbzd/core/ui/view/EditText$Font;

    sget-object v2, Lpl/jbzd/core/ui/view/EditText$Font;->RobotoCondensedBold:Lpl/jbzd/core/ui/view/EditText$Font;

    aput-object v2, v1, v0

    sget-object v2, Lpl/jbzd/core/ui/view/EditText$Font;->RobotoCondensedRegular:Lpl/jbzd/core/ui/view/EditText$Font;

    aput-object v2, v1, v6

    sget-object v2, Lpl/jbzd/core/ui/view/EditText$Font;->RobotoBold:Lpl/jbzd/core/ui/view/EditText$Font;

    aput-object v2, v1, v7

    sget-object v2, Lpl/jbzd/core/ui/view/EditText$Font;->RobotoLight:Lpl/jbzd/core/ui/view/EditText$Font;

    aput-object v2, v1, v8

    sget-object v2, Lpl/jbzd/core/ui/view/EditText$Font;->RobotoMedium:Lpl/jbzd/core/ui/view/EditText$Font;

    aput-object v2, v1, v9

    const/4 v2, 0x5

    sget-object v3, Lpl/jbzd/core/ui/view/EditText$Font;->RobotoRegular:Lpl/jbzd/core/ui/view/EditText$Font;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lpl/jbzd/core/ui/view/EditText$Font;->BitterRegular:Lpl/jbzd/core/ui/view/EditText$Font;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lpl/jbzd/core/ui/view/EditText$Font;->BitterBold:Lpl/jbzd/core/ui/view/EditText$Font;

    aput-object v3, v1, v2

    sput-object v1, Lpl/jbzd/core/ui/view/EditText$Font;->b:[Lpl/jbzd/core/ui/view/EditText$Font;

    .line 32
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lpl/jbzd/core/ui/view/EditText$Font;->a:Ljava/util/Map;

    .line 34
    invoke-static {}, Lpl/jbzd/core/ui/view/EditText$Font;->values()[Lpl/jbzd/core/ui/view/EditText$Font;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 35
    sget-object v4, Lpl/jbzd/core/ui/view/EditText$Font;->a:Ljava/util/Map;

    iget v5, v3, Lpl/jbzd/core/ui/view/EditText$Font;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duplicate id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v3, Lpl/jbzd/core/ui/view/EditText$Font;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39
    :cond_1
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput p3, p0, Lpl/jbzd/core/ui/view/EditText$Font;->id:I

    .line 47
    iput-object p4, p0, Lpl/jbzd/core/ui/view/EditText$Font;->src:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public static getById(I)Lpl/jbzd/core/ui/view/EditText$Font;
    .locals 2

    .prologue
    .line 51
    sget-object v0, Lpl/jbzd/core/ui/view/EditText$Font;->a:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lpl/jbzd/core/ui/view/EditText$Font;->a:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/view/EditText$Font;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lpl/jbzd/core/ui/view/EditText$Font;->a:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/view/EditText$Font;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lpl/jbzd/core/ui/view/EditText$Font;
    .locals 1

    .prologue
    .line 20
    const-class v0, Lpl/jbzd/core/ui/view/EditText$Font;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lpl/jbzd/core/ui/view/EditText$Font;

    return-object v0
.end method

.method public static values()[Lpl/jbzd/core/ui/view/EditText$Font;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lpl/jbzd/core/ui/view/EditText$Font;->b:[Lpl/jbzd/core/ui/view/EditText$Font;

    invoke-virtual {v0}, [Lpl/jbzd/core/ui/view/EditText$Font;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lpl/jbzd/core/ui/view/EditText$Font;

    return-object v0
.end method
