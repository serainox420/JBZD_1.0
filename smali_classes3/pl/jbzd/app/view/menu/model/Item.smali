.class public Lpl/jbzd/app/view/menu/model/Item;
.super Lpl/jbzd/app/view/menu/model/a;
.source "Item.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public b:I

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lpl/jbzd/app/view/menu/model/Item$1;

    invoke-direct {v0}, Lpl/jbzd/app/view/menu/model/Item$1;-><init>()V

    sput-object v0, Lpl/jbzd/app/view/menu/model/Item;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;->ITEM:Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;

    invoke-direct {p0, v0}, Lpl/jbzd/app/view/menu/model/a;-><init>(Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;)V

    .line 35
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lpl/jbzd/app/view/menu/model/Item;-><init>(IILjava/lang/String;Z)V

    .line 22
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Z)V
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;->ITEM:Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;

    invoke-direct {p0, v0}, Lpl/jbzd/app/view/menu/model/a;-><init>(Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;)V

    .line 27
    iput p1, p0, Lpl/jbzd/app/view/menu/model/Item;->b:I

    .line 28
    iput p2, p0, Lpl/jbzd/app/view/menu/model/Item;->c:I

    .line 29
    iput-object p3, p0, Lpl/jbzd/app/view/menu/model/Item;->d:Ljava/lang/String;

    .line 30
    iput-boolean p4, p0, Lpl/jbzd/app/view/menu/model/Item;->e:Z

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;->ITEM:Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;

    invoke-direct {p0, v0}, Lpl/jbzd/app/view/menu/model/a;-><init>(Lpl/jbzd/app/view/menu/MenuAdapter$MenuItemType;)V

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lpl/jbzd/app/view/menu/model/Item;->b:I

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lpl/jbzd/app/view/menu/model/Item;->c:I

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpl/jbzd/app/view/menu/model/Item;->d:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lpl/jbzd/app/view/menu/model/Item;->e:Z

    .line 44
    return-void

    .line 43
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lpl/jbzd/app/view/menu/model/Item;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget v0, p0, Lpl/jbzd/app/view/menu/model/Item;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget-object v0, p0, Lpl/jbzd/app/view/menu/model/Item;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget-boolean v0, p0, Lpl/jbzd/app/view/menu/model/Item;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    return-void

    .line 57
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
