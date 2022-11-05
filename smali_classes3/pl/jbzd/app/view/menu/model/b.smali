.class public Lpl/jbzd/app/view/menu/model/b;
.super Lpl/jbzd/app/view/menu/model/a;
.source "Header.java"


# instance fields
.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;->ITEM_HEADER:Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;

    invoke-direct {p0, v0}, Lpl/jbzd/app/view/menu/model/a;-><init>(Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;)V

    .line 14
    iput-object p1, p0, Lpl/jbzd/app/view/menu/model/b;->b:Ljava/lang/String;

    .line 15
    return-void
.end method
