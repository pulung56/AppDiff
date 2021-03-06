.class public Lcom/zxcx/blst/act/IndexAct;
.super Lcom/zxcx/blst/act/BaseAct;
.source "IndexAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zxcx/blst/act/IndexAct$MyOnExplainListener;,
        Lcom/zxcx/blst/act/IndexAct$MyOnPageChangeListener;,
        Lcom/zxcx/blst/act/IndexAct$MyOnRefreshListener;,
        Lcom/zxcx/blst/act/IndexAct$MyTabOnClickListener;,
        Lcom/zxcx/blst/act/IndexAct$NewDataTask;
    }
.end annotation


# static fields
.field private static final ERROR:I = 0xb

.field private static final SUCCESS:I = 0xa


# instance fields
.field private areaChooseDialogIndex:Lcom/zxcx/blst/custom/widget/AreaChooseDialogIndex;

.field private areaView:Lcom/zxcx/blst/viewmodel/CountyView;

.field private bmpW:I

.field private cityid:Ljava/lang/String;

.field private classfyOneList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zxcx/blst/viewmodel/DrugClassifyOneView;",
            ">;"
        }
    .end annotation
.end field

.field private countyid:Ljava/lang/String;

.field private currIndex:I

.field private drugOneClassfyAdapter:Lcom/zxcx/blst/adapter/DrugOneClassfyAdapter;

.field handler:Landroid/os/Handler;

.field private imageLoader:Lcore/ImageLoader;

.field private indexLay3Adapter:Lcom/zxcx/blst/adapter/IndexLay3Adapter;

.field private indexLay4Adapter:Lcom/zxcx/blst/adapter/IndexLay4Adapter;

.field private isRefreshing:Z

.field private iv_index_cursor:Landroid/widget/ImageView;

.field private iv_title_bar_left:Landroid/widget/ImageView;

.field private iv_title_bar_right:Landroid/widget/ImageView;

.field j:I

.field k:I

.field private listViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private ll_content:Landroid/widget/LinearLayout;

.field private ll_sort_tab:Landroid/widget/LinearLayout;

.field private lv_refresh_index_lay1:Lcom/zxcx/blst/custom/widget/RefreshableListView;

.field private lv_refresh_index_lay3:Lcom/zxcx/blst/custom/widget/RefreshableListView;

.field private lv_refresh_index_lay4:Lcom/zxcx/blst/custom/widget/RefreshableListView;

.field private mItems3:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zxcx/blst/viewmodel/InvestmentListView;",
            ">;"
        }
    .end annotation
.end field

.field private mItems4:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zxcx/blst/viewmodel/InvestmentPeopleView;",
            ">;"
        }
    .end annotation
.end field

.field private mPager:Landroid/support/v4/view/ViewPager;

.field private offset:I

.field private page_index_lay3:I

.field private page_index_lay4:I

.field private proviceid:Ljava/lang/String;

.field private rbtn_sort_tab1:Landroid/widget/RadioButton;

.field private rbtn_sort_tab2:Landroid/widget/RadioButton;

.field private requestResult:[Ljava/lang/String;

.field rgb:I

.field rgb_p:I

.field private tab_sort_type:I

.field private tab_type:I

.field private tv1:Landroid/widget/TextView;

.field private tv2:Landroid/widget/TextView;

.field private tv3:Landroid/widget/TextView;

.field private tv4:Landroid/widget/TextView;

.field private tv_title_bar_center_area:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/16 v1, 0x53

    const/4 v3, 0x0

    .line 67
    invoke-direct {p0}, Lcom/zxcx/blst/act/BaseAct;-><init>()V

    .line 68
    sget-object v0, Lcom/zxcx/blst/app/AppAplication;->imageLoader:Lcore/ImageLoader;

    iput-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->imageLoader:Lcore/ImageLoader;

    .line 69
    iput-boolean v3, p0, Lcom/zxcx/blst/act/IndexAct;->isRefreshing:Z

    .line 70
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/zxcx/blst/act/IndexAct;->rgb:I

    .line 71
    const/16 v0, 0x20

    const/16 v1, 0x68

    const/16 v2, 0xa7

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/zxcx/blst/act/IndexAct;->rgb_p:I

    .line 76
    iput v3, p0, Lcom/zxcx/blst/act/IndexAct;->offset:I

    .line 77
    iput v3, p0, Lcom/zxcx/blst/act/IndexAct;->currIndex:I

    .line 87
    iput v5, p0, Lcom/zxcx/blst/act/IndexAct;->tab_sort_type:I

    .line 90
    iput v4, p0, Lcom/zxcx/blst/act/IndexAct;->j:I

    .line 91
    iput v4, p0, Lcom/zxcx/blst/act/IndexAct;->k:I

    .line 93
    iput v5, p0, Lcom/zxcx/blst/act/IndexAct;->tab_type:I

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->areaView:Lcom/zxcx/blst/viewmodel/CountyView;

    .line 100
    const-string v0, ""

    iput-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->proviceid:Ljava/lang/String;

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->cityid:Ljava/lang/String;

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->countyid:Ljava/lang/String;

    .line 105
    iput v3, p0, Lcom/zxcx/blst/act/IndexAct;->page_index_lay3:I

    .line 106
    iput v3, p0, Lcom/zxcx/blst/act/IndexAct;->page_index_lay4:I

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->classfyOneList:Ljava/util/List;

    .line 126
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->requestResult:[Ljava/lang/String;

    .line 128
    new-instance v0, Lcom/zxcx/blst/act/IndexAct$1;

    invoke-direct {v0, p0}, Lcom/zxcx/blst/act/IndexAct$1;-><init>(Lcom/zxcx/blst/act/IndexAct;)V

    iput-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->handler:Landroid/os/Handler;

    .line 67
    return-void
.end method

.method private InitImageView()V
    .registers 6

    .prologue
    .line 434
    const v3, 0x7f0900b9

    invoke-virtual {p0, v3}, Lcom/zxcx/blst/act/IndexAct;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/zxcx/blst/act/IndexAct;->iv_index_cursor:Landroid/widget/ImageView;

    .line 435
    invoke-virtual {p0}, Lcom/zxcx/blst/act/IndexAct;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02004a

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/zxcx/blst/act/IndexAct;->bmpW:I

    .line 436
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 437
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/zxcx/blst/act/IndexAct;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 438
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 440
    .local v2, "screenW":I
    div-int/lit8 v3, v2, 0x4

    iget v4, p0, Lcom/zxcx/blst/act/IndexAct;->bmpW:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/zxcx/blst/act/IndexAct;->offset:I

    .line 441
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 443
    .local v1, "matrix":Landroid/graphics/Matrix;
    iget v3, p0, Lcom/zxcx/blst/act/IndexAct;->offset:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 444
    iget-object v3, p0, Lcom/zxcx/blst/act/IndexAct;->iv_index_cursor:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 445
    return-void
.end method

.method private InitTextView()V
    .registers 4

    .prologue
    .line 246
    const v0, 0x7f090066

    invoke-virtual {p0, v0}, Lcom/zxcx/blst/act/IndexAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->tv1:Landroid/widget/TextView;

    .line 247
    const v0, 0x7f090067

    invoke-virtual {p0, v0}, Lcom/zxcx/blst/act/IndexAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->tv2:Landroid/widget/TextView;

    .line 248
    const v0, 0x7f0900b7

    invoke-virtual {p0, v0}, Lcom/zxcx/blst/act/IndexAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->tv3:Landroid/widget/TextView;

    .line 249
    const v0, 0x7f0900b8

    invoke-virtual {p0, v0}, Lcom/zxcx/blst/act/IndexAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->tv4:Landroid/widget/TextView;

    .line 250
    iget-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->tv1:Landroid/widget/TextView;

    iget v1, p0, Lcom/zxcx/blst/act/IndexAct;->rgb_p:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 251
    iget-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->tv2:Landroid/widget/TextView;

    iget v1, p0, Lcom/zxcx/blst/act/IndexAct;->rgb:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 252
    iget-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->tv3:Landroid/widget/TextView;

    iget v1, p0, Lcom/zxcx/blst/act/IndexAct;->rgb:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 253
    iget-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->tv4:Landroid/widget/TextView;

    iget v1, p0, Lcom/zxcx/blst/act/IndexAct;->rgb:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 255
    const v0, 0x7f0900ba

    invoke-virtual {p0, v0}, Lcom/zxcx/blst/act/IndexAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->ll_sort_tab:Landroid/widget/LinearLayout;

    .line 256
    const v0, 0x7f0900bb

    invoke-virtual {p0, v0}, Lcom/zxcx/blst/act/IndexAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->rbtn_sort_tab1:Landroid/widget/RadioButton;

    .line 257
    const v0, 0x7f0900bc

    invoke-virtual {p0, v0}, Lcom/zxcx/blst/act/IndexAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->rbtn_sort_tab2:Landroid/widget/RadioButton;

    .line 258
    iget-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->rbtn_sort_tab1:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    iget-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->rbtn_sort_tab2:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    iget-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->tv1:Landroid/widget/TextView;

    new-instance v1, Lcom/zxcx/blst/act/IndexAct$MyTabOnClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/zxcx/blst/act/IndexAct$MyTabOnClickListener;-><init>(Lcom/zxcx/blst/act/IndexAct;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    iget-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->tv2:Landroid/widget/TextView;

    new-instance v1, Lcom/zxcx/blst/act/IndexAct$MyTabOnClickListener;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/zxcx/blst/act/IndexAct$MyTabOnClickListener;-><init>(Lcom/zxcx/blst/act/IndexAct;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    iget-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->tv3:Landroid/widget/TextView;

    new-instance v1, Lcom/zxcx/blst/act/IndexAct$MyTabOnClickListener;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/zxcx/blst/act/IndexAct$MyTabOnClickListener;-><init>(Lcom/zxcx/blst/act/IndexAct;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    iget-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->tv4:Landroid/widget/TextView;

    new-instance v1, Lcom/zxcx/blst/act/IndexAct$MyTabOnClickListener;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lcom/zxcx/blst/act/IndexAct$MyTabOnClickListener;-><init>(Lcom/zxcx/blst/act/IndexAct;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    iget-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->ll_sort_tab:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 270
    const v0, 0x7f090181

    invoke-virtual {p0, v0}, Lcom/zxcx/blst/act/IndexAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 269
    iput-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->iv_title_bar_left:Landroid/widget/ImageView;

    .line 272
    const v0, 0x7f09017f

    invoke-virtual {p0, v0}, Lcom/zxcx/blst/act/IndexAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 271
    iput-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->tv_title_bar_center_area:Landroid/widget/TextView;

    .line 274
    const v0, 0x7f090180

    invoke-virtual {p0, v0}, Lcom/zxcx/blst/act/IndexAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 273
    iput-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->iv_title_bar_right:Landroid/widget/ImageView;

    .line 276
    iget-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->iv_title_bar_left:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    iget-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->tv_title_bar_center_area:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    iget-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->iv_title_bar_right:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    return-void
.end method

.method private InitViewPager()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 285
    const v1, 0x7f0900bd

    invoke-virtual {p0, v1}, Lcom/zxcx/blst/act/IndexAct;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/zxcx/blst/act/IndexAct;->mPager:Landroid/support/v4/view/ViewPager;

    .line 286
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/zxcx/blst/act/IndexAct;->listViews:Ljava/util/List;

    .line 287
    invoke-virtual {p0}, Lcom/zxcx/blst/act/IndexAct;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 289
    .local v0, "mInflater":Landroid/view/LayoutInflater;
    iget-object v1, p0, Lcom/zxcx/blst/act/IndexAct;->listViews:Ljava/util/List;

    const v2, 0x7f030029

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    iget-object v1, p0, Lcom/zxcx/blst/act/IndexAct;->listViews:Ljava/util/List;

    const v2, 0x7f03002b

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    iget-object v1, p0, Lcom/zxcx/blst/act/IndexAct;->listViews:Ljava/util/List;

    const v2, 0x7f03002d

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    iget-object v1, p0, Lcom/zxcx/blst/act/IndexAct;->listViews:Ljava/util/List;

    const v2, 0x7f03002f

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object v1, p0, Lcom/zxcx/blst/act/IndexAct;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/zxcx/blst/adapter/MyPagerAdapter;

    iget-object v3, p0, Lcom/zxcx/blst/act/IndexAct;->listViews:Ljava/util/List;

    invoke-direct {v2, v3}, Lcom/zxcx/blst/adapter/MyPagerAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 294
    iget-object v1, p0, Lcom/zxcx/blst/act/IndexAct;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v5}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 295
    iget-object v1, p0, Lcom/zxcx/blst/act/IndexAct;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/zxcx/blst/act/IndexAct$MyOnPageChangeListener;

    invoke-direct {v2, p0}, Lcom/zxcx/blst/act/IndexAct$MyOnPageChangeListener;-><init>(Lcom/zxcx/blst/act/IndexAct;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 297
    iget-object v1, p0, Lcom/zxcx/blst/act/IndexAct;->listViews:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const v2, 0x7f0900be

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zxcx/blst/custom/widget/RefreshableListView;

    iput-object v1, p0, Lcom/zxcx/blst/act/IndexAct;->lv_refresh_index_lay1:Lcom/zxcx/blst/custom/widget/RefreshableListView;

    .line 298
    iget-object v1, p0, Lcom/zxcx/blst/act/IndexAct;->listViews:Ljava/util/List;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const v2, 0x7f0900bf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/zxcx/blst/act/IndexAct;->ll_content:Landroid/widget/LinearLayout;

    .line 299
    iget-object v1, p0, Lcom/zxcx/blst/act/IndexAct;->listViews:Ljava/util/List;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const v2, 0x7f0900c2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zxcx/blst/custom/widget/RefreshableListView;

    iput-object v1, p0, Lcom/zxcx/blst/act/IndexAct;->lv_refresh_index_lay3:Lcom/zxcx/blst/custom/widget/RefreshableListView;

    .line 300
    iget-object v1, p0, Lcom/zxcx/blst/act/IndexAct;->listViews:Ljava/util/List;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const v2, 0x7f0900c5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zxcx/blst/custom/widget/RefreshableListView;

    iput-object v1, p0, Lcom/zxcx/blst/act/IndexAct;->lv_refresh_index_lay4:Lcom/zxcx/blst/custom/widget/RefreshableListView;

    .line 302
    iget-object v1, p0, Lcom/zxcx/blst/act/IndexAct;->lv_refresh_index_lay1:Lcom/zxcx/blst/custom/widget/RefreshableListView;

    iget-object v2, p0, Lcom/zxcx/blst/act/IndexAct;->drugOneClassfyAdapter:Lcom/zxcx/blst/adapter/DrugOneClassfyAdapter;

    invoke-virtual {v1, v2}, Lcom/zxcx/blst/custom/widget/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 303
    iget-object v1, p0, Lcom/zxcx/blst/act/IndexAct;->lv_refresh_index_lay3:Lcom/zxcx/blst/custom/widget/RefreshableListView;

    iget-object v2, p0, Lcom/zxcx/blst/act/IndexAct;->indexLay3Adapter:Lcom/zxcx/blst/adapter/IndexLay3Adapter;

    invoke-virtual {v1, v2}, Lcom/zxcx/blst/custom/widget/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 304
    iget-object v1, p0, Lcom/zxcx/blst/act/IndexAct;->lv_refresh_index_lay4:Lcom/zxcx/blst/custom/widget/RefreshableListView;

    iget-object v2, p0, Lcom/zxcx/blst/act/IndexAct;->indexLay4Adapter:Lcom/zxcx/blst/adapter/IndexLay4Adapter;

    invoke-virtual {v1, v2}, Lcom/zxcx/blst/custom/widget/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 307
    iget-object v1, p0, Lcom/zxcx/blst/act/IndexAct;->lv_refresh_index_lay1:Lcom/zxcx/blst/custom/widget/RefreshableListView;

    new-instance v2, Lcom/zxcx/blst/act/IndexAct$MyOnRefreshListener;

    iget-object v3, p0, Lcom/zxcx/blst/act/IndexAct;->lv_refresh_index_lay1:Lcom/zxcx/blst/custom/widget/RefreshableListView;

    invoke-direct {v2, p0, v3}, Lcom/zxcx/blst/act/IndexAct$MyOnRefreshListener;-><init>(Lcom/zxcx/blst/act/IndexAct;Lcom/zxcx/blst/custom/widget/RefreshableListView;)V

    invoke-virtual {v1, v2}, Lcom/zxcx/blst/custom/widget/RefreshableListView;->setOnRefreshListener(Lcom/zxcx/blst/custom/widget/RefreshableListView$OnRefreshListener;)V

    .line 308
    iget-object v1, p0, Lcom/zxcx/blst/act/IndexAct;->lv_refresh_index_lay3:Lcom/zxcx/blst/custom/widget/RefreshableListView;

    new-instance v2, Lcom/zxcx/blst/act/IndexAct$MyOnRefreshListener;

    iget-object v3, p0, Lcom/zxcx/blst/act/IndexAct;->lv_refresh_index_lay3:Lcom/zxcx/blst/custom/widget/RefreshableListView;

    invoke-direct {v2, p0, v3}, Lcom/zxcx/blst/act/IndexAct$MyOnRefreshListener;-><init>(Lcom/zxcx/blst/act/IndexAct;Lcom/zxcx/blst/custom/widget/RefreshableListView;)V

    invoke-virtual {v1, v2}, Lcom/zxcx/blst/custom/widget/RefreshableListView;->setOnRefreshListener(Lcom/zxcx/blst/custom/widget/RefreshableListView$OnRefreshListener;)V

    .line 309
    iget-object v1, p0, Lcom/zxcx/blst/act/IndexAct;->lv_refresh_index_lay4:Lcom/zxcx/blst/custom/widget/RefreshableListView;

    new-instance v2, Lcom/zxcx/blst/act/IndexAct$MyOnRefreshListener;

    iget-object v3, p0, Lcom/zxcx/blst/act/IndexAct;->lv_refresh_index_lay4:Lcom/zxcx/blst/custom/widget/RefreshableListView;

    invoke-direct {v2, p0, v3}, Lcom/zxcx/blst/act/IndexAct$MyOnRefreshListener;-><init>(Lcom/zxcx/blst/act/IndexAct;Lcom/zxcx/blst/custom/widget/RefreshableListView;)V

    invoke-virtual {v1, v2}, Lcom/zxcx/blst/custom/widget/RefreshableListView;->setOnRefreshListener(Lcom/zxcx/blst/custom/widget/RefreshableListView$OnRefreshListener;)V

    .line 311
    iget-object v1, p0, Lcom/zxcx/blst/act/IndexAct;->lv_refresh_index_lay3:Lcom/zxcx/blst/custom/widget/RefreshableListView;

    new-instance v2, Lcom/zxcx/blst/act/IndexAct$MyOnExplainListener;

    invoke-direct {v2, p0, v4}, Lcom/zxcx/blst/act/IndexAct$MyOnExplainListener;-><init>(Lcom/zxcx/blst/act/IndexAct;Lcom/zxcx/blst/act/IndexAct$MyOnExplainListener;)V

    invoke-virtual {v1, v2}, Lcom/zxcx/blst/custom/widget/RefreshableListView;->setOnExplainListener(Lcom/zxcx/blst/custom/widget/RefreshableListView$OnExplainListener;)V

    .line 312
    iget-object v1, p0, Lcom/zxcx/blst/act/IndexAct;->lv_refresh_index_lay4:Lcom/zxcx/blst/custom/widget/RefreshableListView;

    new-instance v2, Lcom/zxcx/blst/act/IndexAct$MyOnExplainListener;

    invoke-direct {v2, p0, v4}, Lcom/zxcx/blst/act/IndexAct$MyOnExplainListener;-><init>(Lcom/zxcx/blst/act/IndexAct;Lcom/zxcx/blst/act/IndexAct$MyOnExplainListener;)V

    invoke-virtual {v1, v2}, Lcom/zxcx/blst/custom/widget/RefreshableListView;->setOnExplainListener(Lcom/zxcx/blst/custom/widget/RefreshableListView$OnExplainListener;)V

    .line 314
    iget-object v1, p0, Lcom/zxcx/blst/act/IndexAct;->lv_refresh_index_lay1:Lcom/zxcx/blst/custom/widget/RefreshableListView;

    new-instance v2, Lcom/zxcx/blst/act/IndexAct$2;

    invoke-direct {v2, p0}, Lcom/zxcx/blst/act/IndexAct$2;-><init>(Lcom/zxcx/blst/act/IndexAct;)V

    invoke-virtual {v1, v2}, Lcom/zxcx/blst/custom/widget/RefreshableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 337
    iget-object v1, p0, Lcom/zxcx/blst/act/IndexAct;->lv_refresh_index_lay3:Lcom/zxcx/blst/custom/widget/RefreshableListView;

    new-instance v2, Lcom/zxcx/blst/act/IndexAct$3;

    invoke-direct {v2, p0}, Lcom/zxcx/blst/act/IndexAct$3;-><init>(Lcom/zxcx/blst/act/IndexAct;)V

    invoke-virtual {v1, v2}, Lcom/zxcx/blst/custom/widget/RefreshableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 357
    iget-object v1, p0, Lcom/zxcx/blst/act/IndexAct;->lv_refresh_index_lay4:Lcom/zxcx/blst/custom/widget/RefreshableListView;

    new-instance v2, Lcom/zxcx/blst/act/IndexAct$4;

    invoke-direct {v2, p0}, Lcom/zxcx/blst/act/IndexAct$4;-><init>(Lcom/zxcx/blst/act/IndexAct;)V

    invoke-virtual {v1, v2}, Lcom/zxcx/blst/custom/widget/RefreshableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 385
    return-void
.end method

.method static synthetic access$0(Lcom/zxcx/blst/act/IndexAct;)I
    .registers 2

    .prologue
    .line 93
    iget v0, p0, Lcom/zxcx/blst/act/IndexAct;->tab_type:I

    return v0
.end method

.method static synthetic access$1(Lcom/zxcx/blst/act/IndexAct;)Lcom/zxcx/blst/custom/widget/RefreshableListView;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->lv_refresh_index_lay1:Lcom/zxcx/blst/custom/widget/RefreshableListView;

    return-object v0
.end method

.method static synthetic access$10(Lcom/zxcx/blst/act/IndexAct;)Lcom/zxcx/blst/custom/widget/RefreshableListView;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->lv_refresh_index_lay4:Lcom/zxcx/blst/custom/widget/RefreshableListView;

    return-object v0
.end method

.method static synthetic access$11(Lcom/zxcx/blst/act/IndexAct;I)V
    .registers 2

    .prologue
    .line 105
    iput p1, p0, Lcom/zxcx/blst/act/IndexAct;->page_index_lay3:I

    return-void
.end method

.method static synthetic access$12(Lcom/zxcx/blst/act/IndexAct;)I
    .registers 2

    .prologue
    .line 106
    iget v0, p0, Lcom/zxcx/blst/act/IndexAct;->page_index_lay4:I

    return v0
.end method

.method static synthetic access$13(Lcom/zxcx/blst/act/IndexAct;I)V
    .registers 2

    .prologue
    .line 106
    iput p1, p0, Lcom/zxcx/blst/act/IndexAct;->page_index_lay4:I

    return-void
.end method

.method static synthetic access$14(Lcom/zxcx/blst/act/IndexAct;)Landroid/support/v4/view/ViewPager;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->mPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$15(Lcom/zxcx/blst/act/IndexAct;)I
    .registers 2

    .prologue
    .line 76
    iget v0, p0, Lcom/zxcx/blst/act/IndexAct;->offset:I

    return v0
.end method

.method static synthetic access$16(Lcom/zxcx/blst/act/IndexAct;)I
    .registers 2

    .prologue
    .line 78
    iget v0, p0, Lcom/zxcx/blst/act/IndexAct;->bmpW:I

    return v0
.end method

.method static synthetic access$17(Lcom/zxcx/blst/act/IndexAct;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->ll_sort_tab:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$18(Lcom/zxcx/blst/act/IndexAct;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->tv1:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$19(Lcom/zxcx/blst/act/IndexAct;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->tv2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/zxcx/blst/act/IndexAct;)Lcom/zxcx/blst/adapter/DrugOneClassfyAdapter;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->drugOneClassfyAdapter:Lcom/zxcx/blst/adapter/DrugOneClassfyAdapter;

    return-object v0
.end method

.method static synthetic access$20(Lcom/zxcx/blst/act/IndexAct;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->tv3:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$21(Lcom/zxcx/blst/act/IndexAct;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->tv4:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$22(Lcom/zxcx/blst/act/IndexAct;)I
    .registers 2

    .prologue
    .line 77
    iget v0, p0, Lcom/zxcx/blst/act/IndexAct;->currIndex:I

    return v0
.end method

.method static synthetic access$23(Lcom/zxcx/blst/act/IndexAct;)V
    .registers 1

    .prologue
    .line 556
    invoke-direct {p0}, Lcom/zxcx/blst/act/IndexAct;->initPage1()V

    return-void
.end method

.method static synthetic access$24(Lcom/zxcx/blst/act/IndexAct;)V
    .registers 1

    .prologue
    .line 567
    invoke-direct {p0}, Lcom/zxcx/blst/act/IndexAct;->initPage2()V

    return-void
.end method

.method static synthetic access$25(Lcom/zxcx/blst/act/IndexAct;)V
    .registers 1

    .prologue
    .line 577
    invoke-direct {p0}, Lcom/zxcx/blst/act/IndexAct;->initPage3()V

    return-void
.end method

.method static synthetic access$26(Lcom/zxcx/blst/act/IndexAct;)V
    .registers 1

    .prologue
    .line 589
    invoke-direct {p0}, Lcom/zxcx/blst/act/IndexAct;->initPage4()V

    return-void
.end method

.method static synthetic access$27(Lcom/zxcx/blst/act/IndexAct;I)V
    .registers 2

    .prologue
    .line 77
    iput p1, p0, Lcom/zxcx/blst/act/IndexAct;->currIndex:I

    return-void
.end method

.method static synthetic access$28(Lcom/zxcx/blst/act/IndexAct;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->iv_index_cursor:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$29(Lcom/zxcx/blst/act/IndexAct;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->proviceid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/zxcx/blst/act/IndexAct;)Ljava/util/List;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->classfyOneList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$30(Lcom/zxcx/blst/act/IndexAct;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->cityid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$31(Lcom/zxcx/blst/act/IndexAct;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->countyid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$32(Lcom/zxcx/blst/act/IndexAct;)I
    .registers 2

    .prologue
    .line 87
    iget v0, p0, Lcom/zxcx/blst/act/IndexAct;->tab_sort_type:I

    return v0
.end method

.method static synthetic access$33(Lcom/zxcx/blst/act/IndexAct;)Z
    .registers 2

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/zxcx/blst/act/IndexAct;->isRefreshing:Z

    return v0
.end method

.method static synthetic access$34(Lcom/zxcx/blst/act/IndexAct;[Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 126
    iput-object p1, p0, Lcom/zxcx/blst/act/IndexAct;->requestResult:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$35(Lcom/zxcx/blst/act/IndexAct;)[Ljava/lang/String;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->requestResult:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$36(Lcom/zxcx/blst/act/IndexAct;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->ll_content:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$37(Lcom/zxcx/blst/act/IndexAct;Lcom/zxcx/blst/viewmodel/PosterView;)V
    .registers 2

    .prologue
    .line 919
    invoke-direct {p0, p1}, Lcom/zxcx/blst/act/IndexAct;->toIntent(Lcom/zxcx/blst/viewmodel/PosterView;)V

    return-void
.end method

.method static synthetic access$38(Lcom/zxcx/blst/act/IndexAct;)Lcore/ImageLoader;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->imageLoader:Lcore/ImageLoader;

    return-object v0
.end method

.method static synthetic access$39(Lcom/zxcx/blst/act/IndexAct;Landroid/view/View;Ljava/util/List;)Lcom/zxcx/blst/custom/widget/MyGallery;
    .registers 4

    .prologue
    .line 937
    invoke-direct {p0, p1, p2}, Lcom/zxcx/blst/act/IndexAct;->setupGallery(Landroid/view/View;Ljava/util/List;)Lcom/zxcx/blst/custom/widget/MyGallery;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lcom/zxcx/blst/act/IndexAct;)Lcom/zxcx/blst/adapter/IndexLay3Adapter;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->indexLay3Adapter:Lcom/zxcx/blst/adapter/IndexLay3Adapter;

    return-object v0
.end method

.method static synthetic access$40(Lcom/zxcx/blst/act/IndexAct;Z)V
    .registers 2

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/zxcx/blst/act/IndexAct;->isRefreshing:Z

    return-void
.end method

.method static synthetic access$41(Lcom/zxcx/blst/act/IndexAct;)Lcom/zxcx/blst/custom/widget/AreaChooseDialogIndex;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->areaChooseDialogIndex:Lcom/zxcx/blst/custom/widget/AreaChooseDialogIndex;

    return-object v0
.end method

.method static synthetic access$42(Lcom/zxcx/blst/act/IndexAct;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->tv_title_bar_center_area:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$43(Lcom/zxcx/blst/act/IndexAct;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 100
    iput-object p1, p0, Lcom/zxcx/blst/act/IndexAct;->proviceid:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$44(Lcom/zxcx/blst/act/IndexAct;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 101
    iput-object p1, p0, Lcom/zxcx/blst/act/IndexAct;->cityid:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$45(Lcom/zxcx/blst/act/IndexAct;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 102
    iput-object p1, p0, Lcom/zxcx/blst/act/IndexAct;->countyid:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$46(Lcom/zxcx/blst/act/IndexAct;Lcom/zxcx/blst/viewmodel/CountyView;)V
    .registers 2

    .prologue
    .line 98
    iput-object p1, p0, Lcom/zxcx/blst/act/IndexAct;->areaView:Lcom/zxcx/blst/viewmodel/CountyView;

    return-void
.end method

.method static synthetic access$47(Lcom/zxcx/blst/act/IndexAct;)Lcom/zxcx/blst/viewmodel/CountyView;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->areaView:Lcom/zxcx/blst/viewmodel/CountyView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/zxcx/blst/act/IndexAct;)Lcom/zxcx/blst/custom/widget/RefreshableListView;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->lv_refresh_index_lay3:Lcom/zxcx/blst/custom/widget/RefreshableListView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/zxcx/blst/act/IndexAct;)Ljava/util/List;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->mItems3:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$7(Lcom/zxcx/blst/act/IndexAct;)I
    .registers 2

    .prologue
    .line 105
    iget v0, p0, Lcom/zxcx/blst/act/IndexAct;->page_index_lay3:I

    return v0
.end method

.method static synthetic access$8(Lcom/zxcx/blst/act/IndexAct;)Lcom/zxcx/blst/adapter/IndexLay4Adapter;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->indexLay4Adapter:Lcom/zxcx/blst/adapter/IndexLay4Adapter;

    return-object v0
.end method

.method static synthetic access$9(Lcom/zxcx/blst/act/IndexAct;)Ljava/util/List;
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->mItems4:Ljava/util/List;

    return-object v0
.end method

.method private areaChoose()V
    .registers 5

    .prologue
    .line 1057
    iget-object v2, p0, Lcom/zxcx/blst/act/IndexAct;->areaChooseDialogIndex:Lcom/zxcx/blst/custom/widget/AreaChooseDialogIndex;

    if-eqz v2, :cond_2f

    .line 1058
    iget-object v2, p0, Lcom/zxcx/blst/act/IndexAct;->areaChooseDialogIndex:Lcom/zxcx/blst/custom/widget/AreaChooseDialogIndex;

    invoke-virtual {v2}, Lcom/zxcx/blst/custom/widget/AreaChooseDialogIndex;->show()V

    .line 1062
    iget-object v2, p0, Lcom/zxcx/blst/act/IndexAct;->areaChooseDialogIndex:Lcom/zxcx/blst/custom/widget/AreaChooseDialogIndex;

    .line 1063
    const v3, 0x7f09004c

    invoke-virtual {v2, v3}, Lcom/zxcx/blst/custom/widget/AreaChooseDialogIndex;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1062
    check-cast v1, Landroid/widget/Button;

    .line 1064
    .local v1, "btn_yes":Landroid/widget/Button;
    iget-object v2, p0, Lcom/zxcx/blst/act/IndexAct;->areaChooseDialogIndex:Lcom/zxcx/blst/custom/widget/AreaChooseDialogIndex;

    const v3, 0x7f09004b

    invoke-virtual {v2, v3}, Lcom/zxcx/blst/custom/widget/AreaChooseDialogIndex;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1065
    .local v0, "btn_no":Landroid/widget/Button;
    new-instance v2, Lcom/zxcx/blst/act/IndexAct$7;

    invoke-direct {v2, p0}, Lcom/zxcx/blst/act/IndexAct$7;-><init>(Lcom/zxcx/blst/act/IndexAct;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1123
    new-instance v2, Lcom/zxcx/blst/act/IndexAct$8;

    invoke-direct {v2, p0}, Lcom/zxcx/blst/act/IndexAct$8;-><init>(Lcom/zxcx/blst/act/IndexAct;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1130
    .end local v0    # "btn_no":Landroid/widget/Button;
    .end local v1    # "btn_yes":Landroid/widget/Button;
    :cond_2f
    return-void
.end method

.method private initArrayList()V
    .registers 3

    .prologue
    .line 229
    sget-object v0, Lcom/zxcx/blst/app/AppAplication;->provinceid:Ljava/lang/String;

    iput-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->proviceid:Ljava/lang/String;

    .line 230
    sget-object v0, Lcom/zxcx/blst/app/AppAplication;->cityid:Ljava/lang/String;

    iput-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->cityid:Ljava/lang/String;

    .line 231
    sget-object v0, Lcom/zxcx/blst/app/AppAplication;->countyid:Ljava/lang/String;

    iput-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->countyid:Ljava/lang/String;

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->mItems3:Ljava/util/List;

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->mItems4:Ljava/util/List;

    .line 236
    new-instance v0, Lcom/zxcx/blst/adapter/DrugOneClassfyAdapter;

    iget-object v1, p0, Lcom/zxcx/blst/act/IndexAct;->classfyOneList:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/zxcx/blst/adapter/DrugOneClassfyAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->drugOneClassfyAdapter:Lcom/zxcx/blst/adapter/DrugOneClassfyAdapter;

    .line 237
    new-instance v0, Lcom/zxcx/blst/adapter/IndexLay3Adapter;

    iget-object v1, p0, Lcom/zxcx/blst/act/IndexAct;->mItems3:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/zxcx/blst/adapter/IndexLay3Adapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->indexLay3Adapter:Lcom/zxcx/blst/adapter/IndexLay3Adapter;

    .line 238
    new-instance v0, Lcom/zxcx/blst/adapter/IndexLay4Adapter;

    iget-object v1, p0, Lcom/zxcx/blst/act/IndexAct;->mItems4:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/zxcx/blst/adapter/IndexLay4Adapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->indexLay4Adapter:Lcom/zxcx/blst/adapter/IndexLay4Adapter;

    .line 240
    return-void
.end method

.method private initDialog()V
    .registers 7

    .prologue
    .line 209
    new-instance v4, Lcom/zxcx/blst/custom/widget/AreaChooseDialogIndex;

    const-string v5, "\u533a\u57df\u9009\u62e9"

    invoke-direct {v4, p0, v5}, Lcom/zxcx/blst/custom/widget/AreaChooseDialogIndex;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/zxcx/blst/act/IndexAct;->areaChooseDialogIndex:Lcom/zxcx/blst/custom/widget/AreaChooseDialogIndex;

    .line 210
    iget-object v4, p0, Lcom/zxcx/blst/act/IndexAct;->areaChooseDialogIndex:Lcom/zxcx/blst/custom/widget/AreaChooseDialogIndex;

    invoke-virtual {v4}, Lcom/zxcx/blst/custom/widget/AreaChooseDialogIndex;->getWindow()Landroid/view/Window;

    move-result-object v4

    const v5, 0x106000d

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 211
    iget-object v4, p0, Lcom/zxcx/blst/act/IndexAct;->areaChooseDialogIndex:Lcom/zxcx/blst/custom/widget/AreaChooseDialogIndex;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/zxcx/blst/custom/widget/AreaChooseDialogIndex;->requestWindowFeature(I)Z

    .line 213
    const-string v4, "getCategoryData_index.json"

    invoke-static {p0, v4}, Lcom/zxcx/blst/util/SysTool;->getFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, "json":Ljava/lang/String;
    :try_start_21
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 216
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string v4, "DrugCategoryList"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 217
    .local v2, "json2":Ljava/lang/String;
    const-class v4, Lcom/zxcx/blst/viewmodel/DrugClassifyOneView;

    invoke-static {v2, v4}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/zxcx/blst/act/IndexAct;->classfyOneList:Ljava/util/List;

    .line 218
    iget-object v4, p0, Lcom/zxcx/blst/act/IndexAct;->classfyOneList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_40

    .line 219
    iget-object v4, p0, Lcom/zxcx/blst/act/IndexAct;->classfyOneList:Ljava/util/List;

    sput-object v4, Lcom/zxcx/blst/app/AppAplication;->classfyOneList:Ljava/util/List;
    :try_end_40
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_40} :catch_41

    .line 225
    .end local v2    # "json2":Ljava/lang/String;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :cond_40
    :goto_40
    return-void

    .line 221
    :catch_41
    move-exception v0

    .line 223
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_40
.end method

.method private initPage1()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 557
    const/4 v0, 0x1

    iput v0, p0, Lcom/zxcx/blst/act/IndexAct;->tab_type:I

    .line 558
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_15

    .line 559
    new-instance v0, Lcom/zxcx/blst/act/IndexAct$NewDataTask;

    invoke-direct {v0, p0, v2}, Lcom/zxcx/blst/act/IndexAct$NewDataTask;-><init>(Lcom/zxcx/blst/act/IndexAct;Lcom/zxcx/blst/custom/widget/RefreshableListView;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2}, Lcom/zxcx/blst/act/IndexAct$NewDataTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 564
    :goto_14
    return-void

    .line 561
    :cond_15
    new-instance v0, Lcom/zxcx/blst/act/IndexAct$NewDataTask;

    invoke-direct {v0, p0, v2}, Lcom/zxcx/blst/act/IndexAct$NewDataTask;-><init>(Lcom/zxcx/blst/act/IndexAct;Lcom/zxcx/blst/custom/widget/RefreshableListView;)V

    invoke-virtual {v0, v2}, Lcom/zxcx/blst/act/IndexAct$NewDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_14
.end method

.method private initPage2()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 568
    const/4 v0, 0x2

    iput v0, p0, Lcom/zxcx/blst/act/IndexAct;->tab_type:I

    .line 569
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_15

    .line 570
    new-instance v0, Lcom/zxcx/blst/act/IndexAct$NewDataTask;

    invoke-direct {v0, p0, v2}, Lcom/zxcx/blst/act/IndexAct$NewDataTask;-><init>(Lcom/zxcx/blst/act/IndexAct;Lcom/zxcx/blst/custom/widget/RefreshableListView;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2}, Lcom/zxcx/blst/act/IndexAct$NewDataTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 574
    :goto_14
    return-void

    .line 572
    :cond_15
    new-instance v0, Lcom/zxcx/blst/act/IndexAct$NewDataTask;

    invoke-direct {v0, p0, v2}, Lcom/zxcx/blst/act/IndexAct$NewDataTask;-><init>(Lcom/zxcx/blst/act/IndexAct;Lcom/zxcx/blst/custom/widget/RefreshableListView;)V

    invoke-virtual {v0, v2}, Lcom/zxcx/blst/act/IndexAct$NewDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_14
.end method

.method private initPage3()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 578
    const/4 v0, 0x3

    iput v0, p0, Lcom/zxcx/blst/act/IndexAct;->tab_type:I

    .line 579
    const/4 v0, 0x0

    iput v0, p0, Lcom/zxcx/blst/act/IndexAct;->page_index_lay3:I

    .line 580
    iget-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->mItems3:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 581
    iget-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->rbtn_sort_tab2:Landroid/widget/RadioButton;

    const-string v1, "\u4eba\u6c14\u6392\u5e8f"

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 582
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_24

    .line 583
    new-instance v0, Lcom/zxcx/blst/act/IndexAct$NewDataTask;

    invoke-direct {v0, p0, v2}, Lcom/zxcx/blst/act/IndexAct$NewDataTask;-><init>(Lcom/zxcx/blst/act/IndexAct;Lcom/zxcx/blst/custom/widget/RefreshableListView;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2}, Lcom/zxcx/blst/act/IndexAct$NewDataTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 586
    :goto_23
    return-void

    .line 585
    :cond_24
    new-instance v0, Lcom/zxcx/blst/act/IndexAct$NewDataTask;

    invoke-direct {v0, p0, v2}, Lcom/zxcx/blst/act/IndexAct$NewDataTask;-><init>(Lcom/zxcx/blst/act/IndexAct;Lcom/zxcx/blst/custom/widget/RefreshableListView;)V

    invoke-virtual {v0, v2}, Lcom/zxcx/blst/act/IndexAct$NewDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_23
.end method

.method private initPage4()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 590
    const/4 v0, 0x4

    iput v0, p0, Lcom/zxcx/blst/act/IndexAct;->tab_type:I

    .line 591
    const/4 v0, 0x0

    iput v0, p0, Lcom/zxcx/blst/act/IndexAct;->page_index_lay4:I

    .line 592
    iget-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->mItems4:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 593
    iget-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->rbtn_sort_tab2:Landroid/widget/RadioButton;

    const-string v1, "\u4fe1\u8a89\u6392\u5e8f"

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 594
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_24

    .line 595
    new-instance v0, Lcom/zxcx/blst/act/IndexAct$NewDataTask;

    invoke-direct {v0, p0, v2}, Lcom/zxcx/blst/act/IndexAct$NewDataTask;-><init>(Lcom/zxcx/blst/act/IndexAct;Lcom/zxcx/blst/custom/widget/RefreshableListView;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2}, Lcom/zxcx/blst/act/IndexAct$NewDataTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 599
    :goto_23
    return-void

    .line 597
    :cond_24
    new-instance v0, Lcom/zxcx/blst/act/IndexAct$NewDataTask;

    invoke-direct {v0, p0, v2}, Lcom/zxcx/blst/act/IndexAct$NewDataTask;-><init>(Lcom/zxcx/blst/act/IndexAct;Lcom/zxcx/blst/custom/widget/RefreshableListView;)V

    invoke-virtual {v0, v2}, Lcom/zxcx/blst/act/IndexAct$NewDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_23
.end method

.method private setupGallery(Landroid/view/View;Ljava/util/List;)Lcom/zxcx/blst/custom/widget/MyGallery;
    .registers 13
    .param p1, "big_view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Lcom/zxcx/blst/viewmodel/PosterView;",
            ">;)",
            "Lcom/zxcx/blst/custom/widget/MyGallery;"
        }
    .end annotation

    .prologue
    .line 939
    .local p2, "bigList":Ljava/util/List;, "Ljava/util/List<Lcom/zxcx/blst/viewmodel/PosterView;>;"
    const v3, 0x7f090062

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 941
    .local v6, "tv_header":Landroid/widget/TextView;
    const v3, 0x7f090061

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 940
    check-cast v7, Landroid/widget/RadioGroup;

    .line 943
    .local v7, "gallery_radioGroup":Landroid/widget/RadioGroup;
    const v3, 0x7f090060

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 942
    check-cast v8, Lcom/zxcx/blst/custom/widget/MyGallery;

    .line 946
    .local v8, "gallery":Lcom/zxcx/blst/custom/widget/MyGallery;
    invoke-virtual {v8}, Lcom/zxcx/blst/custom/widget/MyGallery;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 947
    .local v9, "para":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/zxcx/blst/act/IndexAct;->metric:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/lit8 v3, v3, -0xe

    iput v3, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 948
    iget v3, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    mul-int/lit16 v3, v3, 0xd2

    div-int/lit16 v3, v3, 0x26c

    iput v3, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 949
    invoke-virtual {v8, v9}, Lcom/zxcx/blst/custom/widget/MyGallery;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 952
    new-instance v0, Ljava/util/Timer;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Ljava/util/Timer;-><init>(Z)V

    .line 954
    .local v0, "mTimer":Ljava/util/Timer;
    new-instance v1, Lcom/zxcx/blst/act/IndexAct$5;

    invoke-direct {v1, p0, v8, p2}, Lcom/zxcx/blst/act/IndexAct$5;-><init>(Lcom/zxcx/blst/act/IndexAct;Lcom/zxcx/blst/custom/widget/MyGallery;Ljava/util/List;)V

    .line 968
    .local v1, "mTimerTask":Ljava/util/TimerTask;
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xbb8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 970
    if-eqz p2, :cond_63

    .line 971
    invoke-virtual {v7}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_64

    .line 972
    invoke-virtual {v7}, Landroid/widget/RadioGroup;->removeAllViews()V

    .line 978
    :goto_4f
    new-instance v2, Lcom/zxcx/blst/adapter/IndexLay2Adapter;

    .line 979
    iget-object v5, p0, Lcom/zxcx/blst/act/IndexAct;->metric:Landroid/util/DisplayMetrics;

    move-object v3, p0

    move-object v4, p2

    .line 978
    invoke-direct/range {v2 .. v7}, Lcom/zxcx/blst/adapter/IndexLay2Adapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/util/DisplayMetrics;Landroid/widget/TextView;Landroid/widget/RadioGroup;)V

    .line 980
    .local v2, "topAdapter":Lcom/zxcx/blst/adapter/IndexLay2Adapter;
    invoke-virtual {v8, v2}, Lcom/zxcx/blst/custom/widget/MyGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 982
    new-instance v3, Lcom/zxcx/blst/act/IndexAct$6;

    invoke-direct {v3, p0, p2}, Lcom/zxcx/blst/act/IndexAct$6;-><init>(Lcom/zxcx/blst/act/IndexAct;Ljava/util/List;)V

    invoke-virtual {v8, v3}, Lcom/zxcx/blst/custom/widget/MyGallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 995
    .end local v2    # "topAdapter":Lcom/zxcx/blst/adapter/IndexLay2Adapter;
    :cond_63
    return-object v8

    .line 975
    :cond_64
    const/16 v3, 0x8

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4f
.end method

.method private setupView()V
    .registers 1

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/zxcx/blst/act/IndexAct;->InitImageView()V

    .line 200
    invoke-direct {p0}, Lcom/zxcx/blst/act/IndexAct;->InitTextView()V

    .line 201
    invoke-direct {p0}, Lcom/zxcx/blst/act/IndexAct;->InitViewPager()V

    .line 203
    invoke-direct {p0}, Lcom/zxcx/blst/act/IndexAct;->initDialog()V

    .line 204
    return-void
.end method

.method private toIntent(Lcom/zxcx/blst/viewmodel/PosterView;)V
    .registers 7
    .param p1, "posterView"    # Lcom/zxcx/blst/viewmodel/PosterView;

    .prologue
    .line 920
    if-eqz p1, :cond_22

    const-string v3, "1"

    invoke-virtual {p1}, Lcom/zxcx/blst/viewmodel/PosterView;->getLinktype()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    .line 921
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/zxcx/blst/act/BoutiqueAct;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 922
    .local v1, "BoutiqueActIntent":Landroid/content/Intent;
    const-string v3, "posterid"

    invoke-virtual {p1}, Lcom/zxcx/blst/viewmodel/PosterView;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 923
    invoke-virtual {p0, v1}, Lcom/zxcx/blst/act/IndexAct;->startActivity(Landroid/content/Intent;)V

    .line 935
    .end local v1    # "BoutiqueActIntent":Landroid/content/Intent;
    :goto_21
    return-void

    .line 925
    :cond_22
    if-eqz p1, :cond_44

    const-string v3, "1"

    invoke-virtual {p1}, Lcom/zxcx/blst/viewmodel/PosterView;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 926
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/zxcx/blst/act/JoinDetailAct;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 927
    .local v2, "JoinDetailActIntent":Landroid/content/Intent;
    const-string v3, "id"

    invoke-virtual {p1}, Lcom/zxcx/blst/viewmodel/PosterView;->getCommid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 928
    invoke-virtual {p0, v2}, Lcom/zxcx/blst/act/IndexAct;->startActivity(Landroid/content/Intent;)V

    goto :goto_21

    .line 930
    .end local v2    # "JoinDetailActIntent":Landroid/content/Intent;
    :cond_44
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/zxcx/blst/act/AgencyDetailAct;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 931
    .local v0, "AgencyDetailActIntent":Landroid/content/Intent;
    const-string v3, "id"

    invoke-virtual {p1}, Lcom/zxcx/blst/viewmodel/PosterView;->getCommid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 932
    invoke-virtual {p0, v0}, Lcom/zxcx/blst/act/IndexAct;->startActivity(Landroid/content/Intent;)V

    goto :goto_21
.end method

.method private zheTeng()V
    .registers 4

    .prologue
    .line 189
    iget-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->mPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 190
    sget-object v0, Lcom/zxcx/blst/app/AppAplication;->area_display_name:Ljava/lang/String;

    invoke-static {v0}, Lcom/zxcx/blst/util/SysTool;->notEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 191
    iget-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->tv_title_bar_center_area:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/zxcx/blst/app/AppAplication;->area_display_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    :goto_24
    return-void

    .line 193
    :cond_25
    iget-object v0, p0, Lcom/zxcx/blst/act/IndexAct;->tv_title_bar_center_area:Landroid/widget/TextView;

    const-string v1, "  \u5207\u6362\u5730\u533a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_24
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v7, 0xb

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 1002
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_b6

    .line 1053
    :goto_d
    return-void

    .line 1004
    :sswitch_e
    new-instance v0, Lcom/zxcx/blst/custom/dialog/ReleaseDialog;

    invoke-direct {v0, p0, v4}, Lcom/zxcx/blst/custom/dialog/ReleaseDialog;-><init>(Landroid/content/Context;Lcom/zxcx/blst/custom/dialog/ReleaseDialog$MyCallBack;)V

    .line 1005
    .local v0, "releaseDialog":Lcom/zxcx/blst/custom/dialog/ReleaseDialog;
    invoke-virtual {v0}, Lcom/zxcx/blst/custom/dialog/ReleaseDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 1006
    invoke-virtual {v0, v5}, Lcom/zxcx/blst/custom/dialog/ReleaseDialog;->requestWindowFeature(I)Z

    .line 1007
    invoke-virtual {v0}, Lcom/zxcx/blst/custom/dialog/ReleaseDialog;->show()V

    goto :goto_d

    .line 1010
    .end local v0    # "releaseDialog":Lcom/zxcx/blst/custom/dialog/ReleaseDialog;
    :sswitch_24
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/zxcx/blst/act/SearchAct;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1011
    .local v1, "searchActIntent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/zxcx/blst/act/IndexAct;->startActivity(Landroid/content/Intent;)V

    goto :goto_d

    .line 1014
    .end local v1    # "searchActIntent":Landroid/content/Intent;
    :sswitch_2f
    invoke-direct {p0}, Lcom/zxcx/blst/act/IndexAct;->areaChoose()V

    goto :goto_d

    .line 1017
    :sswitch_33
    iput v5, p0, Lcom/zxcx/blst/act/IndexAct;->tab_sort_type:I

    .line 1018
    iput v3, p0, Lcom/zxcx/blst/act/IndexAct;->page_index_lay3:I

    .line 1019
    iput v3, p0, Lcom/zxcx/blst/act/IndexAct;->page_index_lay4:I

    .line 1020
    iget-object v2, p0, Lcom/zxcx/blst/act/IndexAct;->mItems3:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1021
    iget-object v2, p0, Lcom/zxcx/blst/act/IndexAct;->mItems4:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1022
    iget-object v2, p0, Lcom/zxcx/blst/act/IndexAct;->rbtn_sort_tab1:Landroid/widget/RadioButton;

    iget v3, p0, Lcom/zxcx/blst/act/IndexAct;->rgb_p:I

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 1023
    iget-object v2, p0, Lcom/zxcx/blst/act/IndexAct;->rbtn_sort_tab2:Landroid/widget/RadioButton;

    iget v3, p0, Lcom/zxcx/blst/act/IndexAct;->rgb:I

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 1024
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v7, :cond_62

    .line 1025
    new-instance v2, Lcom/zxcx/blst/act/IndexAct$NewDataTask;

    iget-object v3, p0, Lcom/zxcx/blst/act/IndexAct;->lv_refresh_index_lay1:Lcom/zxcx/blst/custom/widget/RefreshableListView;

    invoke-direct {v2, p0, v3}, Lcom/zxcx/blst/act/IndexAct$NewDataTask;-><init>(Lcom/zxcx/blst/act/IndexAct;Lcom/zxcx/blst/custom/widget/RefreshableListView;)V

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v2, v3, v4}, Lcom/zxcx/blst/act/IndexAct$NewDataTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_d

    .line 1027
    :cond_62
    new-instance v2, Lcom/zxcx/blst/act/IndexAct$NewDataTask;

    iget-object v3, p0, Lcom/zxcx/blst/act/IndexAct;->lv_refresh_index_lay1:Lcom/zxcx/blst/custom/widget/RefreshableListView;

    invoke-direct {v2, p0, v3}, Lcom/zxcx/blst/act/IndexAct$NewDataTask;-><init>(Lcom/zxcx/blst/act/IndexAct;Lcom/zxcx/blst/custom/widget/RefreshableListView;)V

    invoke-virtual {v2, v4}, Lcom/zxcx/blst/act/IndexAct$NewDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_d

    .line 1031
    :sswitch_6d
    iput v3, p0, Lcom/zxcx/blst/act/IndexAct;->page_index_lay3:I

    .line 1032
    iput v3, p0, Lcom/zxcx/blst/act/IndexAct;->page_index_lay4:I

    .line 1033
    iget-object v2, p0, Lcom/zxcx/blst/act/IndexAct;->mItems3:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1034
    iget-object v2, p0, Lcom/zxcx/blst/act/IndexAct;->mItems4:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1035
    iget v2, p0, Lcom/zxcx/blst/act/IndexAct;->tab_type:I

    if-ne v2, v6, :cond_a2

    .line 1036
    const/4 v2, 0x2

    iput v2, p0, Lcom/zxcx/blst/act/IndexAct;->tab_sort_type:I

    .line 1040
    :cond_82
    :goto_82
    iget-object v2, p0, Lcom/zxcx/blst/act/IndexAct;->rbtn_sort_tab1:Landroid/widget/RadioButton;

    iget v3, p0, Lcom/zxcx/blst/act/IndexAct;->rgb:I

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 1041
    iget-object v2, p0, Lcom/zxcx/blst/act/IndexAct;->rbtn_sort_tab2:Landroid/widget/RadioButton;

    iget v3, p0, Lcom/zxcx/blst/act/IndexAct;->rgb_p:I

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 1042
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v7, :cond_aa

    .line 1043
    new-instance v2, Lcom/zxcx/blst/act/IndexAct$NewDataTask;

    iget-object v3, p0, Lcom/zxcx/blst/act/IndexAct;->lv_refresh_index_lay1:Lcom/zxcx/blst/custom/widget/RefreshableListView;

    invoke-direct {v2, p0, v3}, Lcom/zxcx/blst/act/IndexAct$NewDataTask;-><init>(Lcom/zxcx/blst/act/IndexAct;Lcom/zxcx/blst/custom/widget/RefreshableListView;)V

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v2, v3, v4}, Lcom/zxcx/blst/act/IndexAct$NewDataTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_d

    .line 1037
    :cond_a2
    iget v2, p0, Lcom/zxcx/blst/act/IndexAct;->tab_type:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_82

    .line 1038
    iput v6, p0, Lcom/zxcx/blst/act/IndexAct;->tab_sort_type:I

    goto :goto_82

    .line 1045
    :cond_aa
    new-instance v2, Lcom/zxcx/blst/act/IndexAct$NewDataTask;

    iget-object v3, p0, Lcom/zxcx/blst/act/IndexAct;->lv_refresh_index_lay1:Lcom/zxcx/blst/custom/widget/RefreshableListView;

    invoke-direct {v2, p0, v3}, Lcom/zxcx/blst/act/IndexAct$NewDataTask;-><init>(Lcom/zxcx/blst/act/IndexAct;Lcom/zxcx/blst/custom/widget/RefreshableListView;)V

    invoke-virtual {v2, v4}, Lcom/zxcx/blst/act/IndexAct$NewDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_d

    .line 1002
    :sswitch_data_b6
    .sparse-switch
        0x7f0900bb -> :sswitch_33
        0x7f0900bc -> :sswitch_6d
        0x7f09017f -> :sswitch_2f
        0x7f090180 -> :sswitch_24
        0x7f090181 -> :sswitch_e
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 181
    invoke-super {p0, p1}, Lcom/zxcx/blst/act/BaseAct;->onCreate(Landroid/os/Bundle;)V

    .line 182
    const v0, 0x7f030028

    invoke-virtual {p0, v0}, Lcom/zxcx/blst/act/IndexAct;->setContentView(I)V

    .line 183
    invoke-direct {p0}, Lcom/zxcx/blst/act/IndexAct;->initArrayList()V

    .line 184
    invoke-direct {p0}, Lcom/zxcx/blst/act/IndexAct;->setupView()V

    .line 185
    invoke-direct {p0}, Lcom/zxcx/blst/act/IndexAct;->zheTeng()V

    .line 186
    return-void
.end method
