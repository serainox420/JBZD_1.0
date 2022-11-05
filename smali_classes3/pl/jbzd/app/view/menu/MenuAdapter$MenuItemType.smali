.class public final enum Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;
.super Ljava/lang/Enum;
.source "MenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/jbzd/app/view/menu/MenuAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MenuItemType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ITEM:Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;

.field public static final enum ITEM_HEADER:Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;

.field public static final enum MENU_FOOTER:Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;

.field public static final enum MENU_HEADER:Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;

.field private static final synthetic a:[Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;

    const-string v1, "MENU_HEADER"

    invoke-direct {v0, v1, v2}, Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;->MENU_HEADER:Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;

    new-instance v0, Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;

    const-string v1, "MENU_FOOTER"

    invoke-direct {v0, v1, v3}, Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;->MENU_FOOTER:Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;

    new-instance v0, Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;

    const-string v1, "ITEM_HEADER"

    invoke-direct {v0, v1, v4}, Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;->ITEM_HEADER:Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;

    new-instance v0, Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;

    const-string v1, "ITEM"

    invoke-direct {v0, v1, v5}, Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;->ITEM:Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;

    const/4 v0, 0x4

    new-array v0, v0, [Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;

    sget-object v1, Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;->MENU_HEADER:Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;

    aput-object v1, v0, v2

    sget-object v1, Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;->MENU_FOOTER:Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;

    aput-object v1, v0, v3

    sget-object v1, Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;->ITEM_HEADER:Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;

    aput-object v1, v0, v4

    sget-object v1, Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;->ITEM:Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;

    aput-object v1, v0, v5

    sput-object v0, Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;->a:[Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;

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
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;
    .locals 1

    .prologue
    .line 33
    const-class v0, Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;

    return-object v0
.end method

.method public static values()[Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;->a:[Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;

    invoke-virtual {v0}, [Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;

    return-object v0
.end method
