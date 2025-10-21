# NoteTaker - Personal Note Management Application

A modern, responsive web application for managin## 🚀 Deploying to Vercel

This application includes special adaptations for Vercel's serverless environment, using Supabase as the database backend. Follow these steps to deploy to Vercel:ersonal notes with a beautiful user interface and full CRUD functionality.

## 🌟 Features

- **Create Notes**: Add new notes with titles and rich content
- **Edit Notes**: Update existing notes with real-time editing
- **Delete Notes**: Remove notes you no longer need
- **Search Notes**: Find notes quickly by searching titles and content
- **AI-Generated Notes**: Generate notes with AI based on prompts
- **Responsive Design**: Works perfectly on desktop and mobile devices
- **Modern UI**: Beautiful gradient design with smooth animations
- **Real-time Updates**: Instant feedback and updates
- **LLM Integration**: Generate notes using LLM APIs
- **Multi-platform Deployments**: Configurable for Vercel, Render, or Railway

## 🛠 Technology Stack

### Frontend
- **HTML5**: Semantic markup structure
- **CSS3**: Modern styling with gradients, animations, and responsive design
- **JavaScript (ES6+)**: Interactive functionality and API communication

### Backend
- **Python Flask**: Web framework for API endpoints
- **SQLAlchemy**: ORM for database operations
- **Flask-CORS**: Cross-origin resource sharing support
- **LLM Integration**: For AI-powered note generation

### Database
- **Supabase (PostgreSQL)**: Primary database for all environments
- **Serverless-compatible**: Fully compatible with serverless deployments

## 📁 Project Structure

```
notetaking-app/
├── src/                    # Main Flask application
│   ├── models/             # Database models
│   ├── routes/             # API route handlers
│   ├── services/           # Service layer (LLM integration)
│   ├── static/             # Frontend assets
│   └── main.py             # Flask application entry point
├── api/                    # Serverless functions for Vercel
│   ├── index.py            # Entry point for Vercel
│   ├── notes.py            # Notes API for Vercel
│   ├── status.py           # API status endpoint
│   ├── generate.py         # Note generation endpoint
│   └── static/             # Static files for Vercel
├── database/               # Database files
├── scripts/                # Utility scripts
├── vercel.json             # Vercel configuration
├── render.yaml             # Render configuration
├── railway.json            # Railway configuration
└── requirements.txt        # Python dependencies
```

## 🔧 Local Development Setup

### Prerequisites
- Python 3.9+
- pip (Python package manager)

### Installation Steps

1. **Create a virtual environment**
   ```bash
   python -m venv venv
   ```

2. **Activate the virtual environment**
   ```bash
   source venv/bin/activate  # On Windows: venv\Scripts\activate
   ```

3. **Install dependencies**
   ```bash
   pip install -r requirements.txt
   ```

4. **Set up environment variables**
   ```bash
   cp .env.example .env
   # Edit .env with your Supabase credentials
   ```

5. **Set up the Supabase database**
   ```bash
   python scripts/setup_supabase.py
   ```

6. **Run the Flask application**
   ```bash
   python src/main.py
   ```

5. **Access the application**
   - Open your browser and go to `http://localhost:5001`

## � Deploying to Vercel

This application includes special adaptations for Vercel's serverless environment, which doesn't support SQLite. Follow these steps to deploy to Vercel:

### Prerequisites
- A [Vercel](https://vercel.com/) account
- [Vercel CLI](https://vercel.com/download) installed (optional)

### Deployment Steps

1. **Login to Vercel**
   - Either use the Vercel CLI: `vercel login`
   - Or use the Vercel web dashboard

2. **Deploy the application**
   
   **Using Vercel CLI:**
   ```bash
   vercel
   ```

   **Using Vercel Dashboard:**
   - Import your GitHub repository
   - Use the following settings:
     - Framework Preset: `Other`
     - Build Command: `pip install -r requirements.txt`
     - Output Directory: N/A (leave blank)
     - Install Command: N/A (leave blank)

3. **Important Vercel Environment Variables**
   
   Set these environment variables in the Vercel project settings:
   ```
   SUPABASE_URL=your_supabase_url
   SUPABASE_KEY=your_supabase_anon_key
   GITHUB_TOKEN=your_github_token_here
   ```

4. **Understanding the Serverless Architecture**
   
   The Vercel deployment uses:
   - Supabase PostgreSQL database instead of SQLite
   - WSGI adapter to run Flask in a serverless environment
   - Special CORS configuration for API access
   - A debugging endpoint at `/api/status` to verify API connectivity

5. **Troubleshooting Vercel Deployment**

   If your deployment isn't working:
   - Check the API connectivity using the "Check API Status" button
   - Review the Vercel deployment logs for any errors
   - Make sure all routes are properly configured in `vercel.json`
   - Verify CORS headers are correctly set
   - Ensure your Supabase credentials are correctly set in environment variables

## � API Endpoints

### Standard API (Flask Development Server)
- `GET /api/notes` - Get all notes
- `POST /api/notes` - Create a new note
- `GET /api/notes/<id>` - Get a specific note
- `PUT /api/notes/<id>` - Update a note
- `DELETE /api/notes/<id>` - Delete a note
- `POST /api/notes/generate` - Generate a note with AI

### Vercel Serverless API
- `GET /api/notes` - Get all notes from Supabase
- `POST /api/notes` - Create a new note in Supabase
- `GET /api/notes/<id>` - Get a specific note from Supabase
- `PUT /api/notes/<id>` - Update a note in Supabase
- `DELETE /api/notes/<id>` - Delete a note from Supabase
- `POST /api/notes/generate` - Generate a note with AI
- `GET /api/status` - Check API connectivity and get debug info

## 🔒 Database Setup

This project uses Supabase (PostgreSQL) as its database:

1. **Create a Supabase account and project**
   - Sign up at [Supabase](https://supabase.io)
   - Create a new project
   - Get your project URL and anon key from the API settings

2. **Set up environment variables**
   - Add your Supabase URL and key to the `.env` file
   - For deployments, add these as environment variables

3. **Run the setup script**
   - Run `python scripts/setup_supabase.py` to create the necessary tables

The script will create the following tables:
- `notes` - For storing all notes with proper columns and data types

## 🧪 API Debugging

To debug API connectivity issues:
1. Check the console for fetch errors
2. Use the "Check API Status" button in the UI
3. Verify your Vercel deployment logs
4. Review CORS configuration in `vercel.json`

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## 📄 License

This project is open source and available under the MIT License.

---

**Built with ❤️ using Flask, JavaScript, and modern web technologies**

