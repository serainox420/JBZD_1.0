.class public final enum Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;
.super Ljava/lang/Enum;
.source "EasyImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/aprilapps/easyphotopicker/EasyImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CAMERA:Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;

.field public static final enum DOCUMENTS:Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;

.field public static final enum GALLERY:Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;

.field private static final synthetic a:[Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-instance v0, Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;

    const-string v1, "GALLERY"

    invoke-direct {v0, v1, v2}, Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;->GALLERY:Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;

    new-instance v0, Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;

    const-string v1, "DOCUMENTS"

    invoke-direct {v0, v1, v3}, Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;->DOCUMENTS:Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;

    new-instance v0, Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;

    const-string v1, "CAMERA"

    invoke-direct {v0, v1, v4}, Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;->CAMERA:Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;

    .line 38
    const/4 v0, 0x3

    new-array v0, v0, [Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;

    sget-object v1, Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;->GALLERY:Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;

    aput-object v1, v0, v2

    sget-object v1, Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;->DOCUMENTS:Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;

    aput-object v1, v0, v3

    sget-object v1, Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;->CAMERA:Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;

    aput-object v1, v0, v4

    sput-object v0, Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;->a:[Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;

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
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;
    .locals 1

    .prologue
    .line 38
    const-class v0, Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;

    return-object v0
.end method

.method public static values()[Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;->a:[Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;

    invoke-virtual {v0}, [Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;

    return-object v0
.end method
