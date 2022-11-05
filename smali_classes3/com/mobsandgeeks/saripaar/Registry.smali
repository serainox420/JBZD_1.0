.class final Lcom/mobsandgeeks/saripaar/Registry;
.super Ljava/lang/Object;
.source "Registry.java"


# static fields
.field private static final STOCK_ADAPTERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/mobsandgeeks/saripaar/adapter/ViewDataAdapter;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "Registry"


# instance fields
.field private mMappings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Landroid/view/View;",
            ">;",
            "Lcom/mobsandgeeks/saripaar/adapter/ViewDataAdapter;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mobsandgeeks/saripaar/Registry;->STOCK_ADAPTERS:Ljava/util/Map;

    .line 288
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 289
    const-class v1, Ljava/lang/Boolean;

    new-instance v2, Lcom/mobsandgeeks/saripaar/adapter/CheckBoxBooleanAdapter;

    invoke-direct {v2}, Lcom/mobsandgeeks/saripaar/adapter/CheckBoxBooleanAdapter;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v1, Lcom/mobsandgeeks/saripaar/Registry;->STOCK_ADAPTERS:Ljava/util/Map;

    const-class v2, Landroid/widget/CheckBox;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 294
    const-class v1, Ljava/lang/Boolean;

    new-instance v2, Lcom/mobsandgeeks/saripaar/adapter/RadioButtonBooleanAdapter;

    invoke-direct {v2}, Lcom/mobsandgeeks/saripaar/adapter/RadioButtonBooleanAdapter;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    sget-object v1, Lcom/mobsandgeeks/saripaar/Registry;->STOCK_ADAPTERS:Ljava/util/Map;

    const-class v2, Landroid/widget/RadioButton;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 299
    const-class v1, Ljava/lang/Boolean;

    new-instance v2, Lcom/mobsandgeeks/saripaar/adapter/RadioGroupBooleanAdapter;

    invoke-direct {v2}, Lcom/mobsandgeeks/saripaar/adapter/RadioGroupBooleanAdapter;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v1, Lcom/mobsandgeeks/saripaar/Registry;->STOCK_ADAPTERS:Ljava/util/Map;

    const-class v2, Landroid/widget/RadioGroup;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 304
    const-class v1, Ljava/lang/Integer;

    new-instance v2, Lcom/mobsandgeeks/saripaar/adapter/SpinnerIndexAdapter;

    invoke-direct {v2}, Lcom/mobsandgeeks/saripaar/adapter/SpinnerIndexAdapter;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    sget-object v1, Lcom/mobsandgeeks/saripaar/Registry;->STOCK_ADAPTERS:Ljava/util/Map;

    const-class v2, Landroid/widget/Spinner;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 309
    const-class v1, Ljava/lang/String;

    new-instance v2, Lcom/mobsandgeeks/saripaar/adapter/TextViewStringAdapter;

    invoke-direct {v2}, Lcom/mobsandgeeks/saripaar/adapter/TextViewStringAdapter;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    const-class v1, Ljava/lang/Integer;

    new-instance v2, Lcom/mobsandgeeks/saripaar/adapter/TextViewIntegerAdapter;

    invoke-direct {v2}, Lcom/mobsandgeeks/saripaar/adapter/TextViewIntegerAdapter;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    const-class v1, Ljava/lang/Float;

    new-instance v2, Lcom/mobsandgeeks/saripaar/adapter/TextViewFloatAdapter;

    invoke-direct {v2}, Lcom/mobsandgeeks/saripaar/adapter/TextViewFloatAdapter;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    const-class v1, Ljava/lang/Double;

    new-instance v2, Lcom/mobsandgeeks/saripaar/adapter/TextViewDoubleAdapter;

    invoke-direct {v2}, Lcom/mobsandgeeks/saripaar/adapter/TextViewDoubleAdapter;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    sget-object v1, Lcom/mobsandgeeks/saripaar/Registry;->STOCK_ADAPTERS:Ljava/util/Map;

    const-class v2, Landroid/widget/TextView;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mobsandgeeks/saripaar/Registry;->mMappings:Ljava/util/Map;

    .line 70
    return-void
.end method

.method private assertAttribute(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 237
    invoke-static {p1, p2}, Lcom/mobsandgeeks/saripaar/Reflector;->getAttributeMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 239
    if-nez v0, :cond_0

    .line 240
    const-string v0, "\'%s\' requires the \'%s\' attribute."

    new-array v1, v5, [Ljava/lang/Object;

    .line 241
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    aput-object p2, v1, v4

    .line 240
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 242
    new-instance v1, Lcom/mobsandgeeks/saripaar/exception/SaripaarViolationException;

    invoke-direct {v1, v0}, Lcom/mobsandgeeks/saripaar/exception/SaripaarViolationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 245
    :cond_0
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    .line 246
    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 247
    const-string v1, "\'%s\' in \'%s\' should be of type \'%s\', but was \'%s\'."

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    .line 248
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 249
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x3

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    .line 247
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 250
    new-instance v1, Lcom/mobsandgeeks/saripaar/exception/SaripaarViolationException;

    invoke-direct {v1, v0}, Lcom/mobsandgeeks/saripaar/exception/SaripaarViolationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 252
    :cond_1
    return-void
.end method

.method private assertCompatibleReturnType(Ljava/lang/Class;Lcom/mobsandgeeks/saripaar/adapter/ViewDataAdapter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<DATA_TYPE:",
            "Ljava/lang/Object;",
            "VIEW:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/Class",
            "<TDATA_TYPE;>;",
            "Lcom/mobsandgeeks/saripaar/adapter/ViewDataAdapter",
            "<TVIEW;TDATA_TYPE;>;)V"
        }
    .end annotation

    .prologue
    .line 257
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/mobsandgeeks/saripaar/Reflector;->findGetDataMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 259
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    .line 260
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 261
    const-string v1, "\'%s\' returns \'%s\', but expecting \'%s\'."

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 262
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 263
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x2

    .line 264
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 261
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 265
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 267
    :cond_0
    return-void
.end method

.method private assertIsValidRuleAnnotation(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 218
    const-class v0, Lcom/mobsandgeeks/saripaar/annotation/ValidateUsing;

    invoke-static {p1, v0}, Lcom/mobsandgeeks/saripaar/Reflector;->isAnnotated(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    .line 219
    if-nez v0, :cond_0

    .line 220
    const-string v0, "\'%s\' is not annotated with \'%s\'."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 221
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/mobsandgeeks/saripaar/annotation/ValidateUsing;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 220
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 222
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 226
    :cond_0
    const-string v0, "sequence"

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v0, v1}, Lcom/mobsandgeeks/saripaar/Registry;->assertAttribute(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 229
    const-string v0, "message"

    const-class v1, Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/mobsandgeeks/saripaar/Registry;->assertAttribute(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 232
    const-string v0, "messageResId"

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v0, v1}, Lcom/mobsandgeeks/saripaar/Registry;->assertAttribute(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 233
    return-void
.end method

.method private getCompatibleViewDataAdapter(Ljava/util/HashMap;Ljava/lang/Class;)Lcom/mobsandgeeks/saripaar/adapter/ViewDataAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<VIEW:",
            "Landroid/view/View;",
            ">(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Landroid/view/View;",
            ">;",
            "Lcom/mobsandgeeks/saripaar/adapter/ViewDataAdapter;",
            ">;",
            "Ljava/lang/Class",
            "<TVIEW;>;)",
            "Lcom/mobsandgeeks/saripaar/adapter/ViewDataAdapter;"
        }
    .end annotation

    .prologue
    .line 273
    const/4 v1, 0x0

    .line 274
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 275
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 276
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 277
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobsandgeeks/saripaar/adapter/ViewDataAdapter;

    :goto_1
    move-object v1, v0

    .line 279
    goto :goto_0

    .line 280
    :cond_0
    return-object v1

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method private register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/mobsandgeeks/saripaar/adapter/ViewDataAdapter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<VIEW:",
            "Landroid/view/View;",
            "DATA_TYPE:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/Class",
            "<TDATA_TYPE;>;",
            "Ljava/lang/Class",
            "<TVIEW;>;",
            "Lcom/mobsandgeeks/saripaar/adapter/ViewDataAdapter",
            "<TVIEW;TDATA_TYPE;>;)V"
        }
    .end annotation

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lcom/mobsandgeeks/saripaar/Registry;->assertIsValidRuleAnnotation(Ljava/lang/Class;)V

    .line 196
    invoke-direct {p0, p2, p4}, Lcom/mobsandgeeks/saripaar/Registry;->assertCompatibleReturnType(Ljava/lang/Class;Lcom/mobsandgeeks/saripaar/adapter/ViewDataAdapter;)V

    .line 200
    iget-object v0, p0, Lcom/mobsandgeeks/saripaar/Registry;->mMappings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/mobsandgeeks/saripaar/Registry;->mMappings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 207
    :goto_0
    invoke-virtual {v0, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    const-string v0, "A \'%s\' for \'%s\' has already been registered."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 209
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 208
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 210
    const-string v1, "Registry"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :goto_1
    return-void

    .line 203
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 204
    iget-object v1, p0, Lcom/mobsandgeeks/saripaar/Registry;->mMappings:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 212
    :cond_1
    invoke-virtual {v0, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method


# virtual methods
.method public getDataAdapter(Ljava/lang/Class;Ljava/lang/Class;)Lcom/mobsandgeeks/saripaar/adapter/ViewDataAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<VIEW:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/Class",
            "<TVIEW;>;)",
            "Lcom/mobsandgeeks/saripaar/adapter/ViewDataAdapter",
            "<TVIEW;*>;"
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lcom/mobsandgeeks/saripaar/Registry;->mMappings:Ljava/util/Map;

    .line 169
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 172
    const/4 v1, 0x0

    .line 173
    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobsandgeeks/saripaar/adapter/ViewDataAdapter;

    .line 177
    if-nez v1, :cond_0

    .line 178
    invoke-direct {p0, v0, p2}, Lcom/mobsandgeeks/saripaar/Registry;->getCompatibleViewDataAdapter(Ljava/util/HashMap;Ljava/lang/Class;)Lcom/mobsandgeeks/saripaar/adapter/ViewDataAdapter;

    move-result-object v1

    .line 183
    :cond_0
    return-object v1
.end method

.method public getRegisteredAnnotations()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcom/mobsandgeeks/saripaar/Registry;->mMappings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public varargs register(Ljava/lang/Class;Ljava/lang/Class;Lcom/mobsandgeeks/saripaar/adapter/ViewDataAdapter;[Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<VIEW:",
            "Landroid/view/View;",
            "DATA_TYPE:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TVIEW;>;",
            "Ljava/lang/Class",
            "<TDATA_TYPE;>;",
            "Lcom/mobsandgeeks/saripaar/adapter/ViewDataAdapter",
            "<TVIEW;TDATA_TYPE;>;[",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    if-eqz p4, :cond_0

    array-length v0, p4

    if-lez v0, :cond_0

    .line 131
    array-length v1, p4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p4, v0

    .line 132
    invoke-direct {p0, v2, p2, p1, p3}, Lcom/mobsandgeeks/saripaar/Registry;->register(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/mobsandgeeks/saripaar/adapter/ViewDataAdapter;)V

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    :cond_0
    return-void
.end method

.method public varargs register([Ljava/lang/Class;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 84
    array-length v3, p1

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, p1, v1

    .line 85
    invoke-direct {p0, v4}, Lcom/mobsandgeeks/saripaar/Registry;->assertIsValidRuleAnnotation(Ljava/lang/Class;)V

    .line 87
    const-class v0, Lcom/mobsandgeeks/saripaar/annotation/ValidateUsing;

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/mobsandgeeks/saripaar/annotation/ValidateUsing;

    .line 88
    invoke-static {v0}, Lcom/mobsandgeeks/saripaar/Reflector;->getRuleDataType(Lcom/mobsandgeeks/saripaar/annotation/ValidateUsing;)Ljava/lang/Class;

    move-result-object v5

    .line 90
    sget-object v0, Lcom/mobsandgeeks/saripaar/Registry;->STOCK_ADAPTERS:Ljava/util/Map;

    const-class v6, Landroid/widget/TextView;

    .line 91
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 92
    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobsandgeeks/saripaar/adapter/ViewDataAdapter;

    .line 94
    if-eqz v0, :cond_1

    .line 95
    const-class v6, Landroid/widget/TextView;

    new-array v7, v8, [Ljava/lang/Class;

    aput-object v4, v7, v2

    invoke-virtual {p0, v6, v5, v0, v7}, Lcom/mobsandgeeks/saripaar/Registry;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/mobsandgeeks/saripaar/adapter/ViewDataAdapter;[Ljava/lang/Class;)V

    .line 84
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 97
    :cond_1
    const-string v0, "Unable to find a matching adapter for `%s`, that returns a `%s`."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 99
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    .line 97
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 100
    new-instance v1, Lcom/mobsandgeeks/saripaar/exception/SaripaarViolationException;

    invoke-direct {v1, v0}, Lcom/mobsandgeeks/saripaar/exception/SaripaarViolationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 104
    :cond_2
    return-void
.end method
